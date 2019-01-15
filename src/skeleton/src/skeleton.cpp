// openni_tracker.cpp

#include <ros/ros.h>
#include <stdlib.h>
#include <iostream>
#include <vector>
#include <math.h>
#include <ros/package.h>
#include <tf/transform_broadcaster.h>
#include <kdl/frames.hpp>
#include <XnOpenNI.h>
#include <XnCodecIDs.h>
#include <XnCppWrapper.h>
#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <cv_bridge/cv_bridge.h>
#include <stdio.h>
#include "skeleton/JointMsg.h"
#include <geometry_msgs/Point.h>
using namespace std;
using namespace cv;

void XN_CALLBACK_TYPE NewUser(xn::UserGenerator& generator,  
                              XnUserID user,  
                              void* pCookie )  
{  
    cout << "New user identified: " << user << endl;  
    generator.GetSkeletonCap().RequestCalibration( user, true );  
}  
  
// callback function of skeleton: calibration end   
void XN_CALLBACK_TYPE CalibrationEnd(xn::SkeletonCapability& skeleton,  
                                     XnUserID user,  
                                     XnCalibrationStatus eStatus,  
                                     void* pCookie )  
{  
    cout << "Calibration complete for user " <<  user << ", ";  
    if( eStatus == XN_CALIBRATION_STATUS_OK )  
    {  
        cout << "Success" << endl;  
        skeleton.StartTracking( user );  
    }  
    else  
    {  
        cout << "Failure" << endl;  
        skeleton.RequestCalibration( user, true );  
    }  
}  

int main( int argc, char** argv )  
{  
    ros::init(argc,argv,"image_publisher");
    ros::NodeHandle nh;
    image_transport::ImageTransport it(nh);
    image_transport::Publisher pub=it.advertise("camera/image",100);
    ros::Publisher pub2 = nh.advertise<skeleton::JointMsg>("skeleton_msg", 1000);
    // 1. initial context  
    char key=0;  
    xn::Context context;  
    context.Init();  
    xn::UserGenerator userGenerator;  
    xn::DepthGenerator depthGenerator;  
    xn::ImageGenerator imageGenerator;  
  
    int startSkelPoints[14]={1,2,6,6,12,17,6,7,12,13,17,18,21,22};  
    int endSkelPoints[14]={2,3,12,21,17,21,7,9,13,15,18,20,22,24};  
    xn::ImageMetaData imageMD;  
  
    Mat cameraImg(640,480,CV_8UC3);  
    namedWindow("Camera",1);  
  
    // map output mode  
    XnMapOutputMode mapMode;  
    mapMode.nXRes = 640;  
    mapMode.nYRes = 480;  
    mapMode.nFPS = 30;  
  
    // create generator  
    depthGenerator.Create( context );//创建一个收集深度信息的节点  
    depthGenerator.SetMapOutputMode( mapMode );//设置该节点的视频的模式  
    imageGenerator.Create( context );  
    userGenerator.Create( context );  
    depthGenerator.GetAlternativeViewPointCap().SetViewPoint( imageGenerator );   
    // 2. create user generator  
    xn::UserGenerator mUserGenerator;  
    mUserGenerator.Create( context );  
    // 3. Register callback functions of user generator  
    XnCallbackHandle hUserCB;  
    mUserGenerator.RegisterUserCallbacks( NewUser, NULL, NULL, hUserCB );  
  
    // 4. Register callback functions of skeleton capability  
    xn::SkeletonCapability mSC = mUserGenerator.GetSkeletonCap();  
    mSC.SetSkeletonProfile( XN_SKEL_PROFILE_ALL );  
    XnCallbackHandle hCalibCB;  
    mSC.RegisterToCalibrationComplete( CalibrationEnd, &mUserGenerator, hCalibCB );  
  
      
  
    // 5. start generate data  
    context.StartGeneratingAll();  
    while( ros::ok() )  
    {  
        // 6. Update date  
        context.WaitAndUpdateAll();  
        imageGenerator.GetMetaData(imageMD);  
        cvtColor(cameraImg,cameraImg,CV_RGB2BGR);  
        // 7. get user information  
        XnUInt16 nUsers = mUserGenerator.GetNumberOfUsers();
        XnPoint3D skelPointsIn[24],skelPointsOut[24];  
        if( nUsers > 0 )  
        {  
            // 8. get users  
            XnUserID* UserID = new XnUserID[nUsers];  
            mUserGenerator.GetUsers( UserID, nUsers );  
            // 9. check each user  
            for( int i = 0; i < nUsers; ++i )  
            {  
                // 10. if is tracking skeleton  
                if( mSC.IsTracking( UserID[i] ) )  
                {    
                    XnSkeletonJointTransformation mJointTran;  
                    for(int iter=0;iter<24;iter++)  
                    {  
                        //XnSkeletonJoint from 1 to 24            
                        mSC.GetSkeletonJoint( UserID[i],XnSkeletonJoint(iter+1), mJointTran );  
                        skelPointsIn[iter]=mJointTran.position.position;  
                    }  
                    depthGenerator.ConvertRealWorldToProjective(24,skelPointsIn,skelPointsOut); 
                    for(int d=0;d<14;d++)  
                    { 
                        Point startpoint = Point(skelPointsOut[startSkelPoints[d]-1].X,skelPointsOut[startSkelPoints[d]-1].Y);  
                        Point endpoint = Point(skelPointsOut[endSkelPoints[d]-1].X,skelPointsOut[endSkelPoints[d]-1].Y);  
                        if (d==0)  
                        {  
                            Point center = Point((startpoint.x + endpoint.x)/2,(startpoint.y + endpoint.y)/2);  
                            int size;  
                            size = (int)sqrt((double)((endpoint.x - startpoint.x)*(endpoint.x - startpoint.x)+(endpoint.y - startpoint.y)*(endpoint.y - startpoint.y)));  
                            Point p1,p2;  
                            p1.x = startpoint.x - size/2;  
                            p1.y = startpoint.y;  
                            p2.x = endpoint.x + size/2;  
                            p2.y = endpoint.y;  
                            rectangle(cameraImg,p1,p2,Scalar(255,0,0),4);  
                        }  
                        if(d==2){
                            circle(cameraImg,endpoint,3,Scalar(0,255,0),12);
                        }
                        else if(d==4){
                            circle(cameraImg,startpoint,3,Scalar(0,255,0),12);
                        }
                        else if(d==8){
                            circle(cameraImg,endpoint,3,Scalar(0,255,0),12);
                        }
                        else if(d==9){
                            circle(cameraImg,startpoint,3,Scalar(0,255,0),12);
                            circle(cameraImg,endpoint,3,Scalar(0,255,0),12);
                        }
                        else{
                            circle(cameraImg,startpoint,3,Scalar(0,0,255),12);  
                            circle(cameraImg,endpoint,3,Scalar(0,0,255),12); 
                        }     
                        line(cameraImg,startpoint,endpoint,Scalar(0,0,255),4);  
                    }  
                    // circle(cameraImg,handpoint,3,Scalar(255,255,255),12);
  
  
                }  
            }  
            delete [] UserID;  
        } 
        sensor_msgs::ImagePtr msg=cv_bridge::CvImage(std_msgs::Header(),"bgr8",cameraImg).toImageMsg(); 
        ros::Rate loop_rate(10);
        pub.publish(msg);
       //  imshow("Camera",cameraImg);  
        // waitKey(20); 

        cameraImg=Mat::zeros(640,480,CV_8UC3);
        skeleton::JointMsg P;
        geometry_msgs::Point p1,p2,p3;
        p1.x = skelPointsOut[endSkelPoints[2]-1].X;
        p1.y = skelPointsOut[endSkelPoints[2]-1].Y;
        p1.z = skelPointsOut[endSkelPoints[2]-1].Z;
        p2.x = skelPointsOut[endSkelPoints[8]-1].X;
        p2.y = skelPointsOut[endSkelPoints[8]-1].Y;
        p2.z = skelPointsOut[endSkelPoints[8]-1].Z;
        p3.x = skelPointsOut[endSkelPoints[9]-1].X;
        p3.y = skelPointsOut[endSkelPoints[9]-1].Y;
        p3.z = skelPointsOut[endSkelPoints[9]-1].Z;
        printf("p1.x : %f p1.y: %f  p1.z : %f \r\n",p1.x,p1.y,p1.z);
        std::vector<geometry_msgs::Point> arrp;
        arrp.push_back(p1);
        arrp.push_back(p2);
        arrp.push_back(p3);
        P.joints=arrp; 
        pub2.publish(P);

        ros::spinOnce();
        loop_rate.sleep();
    }


    // 13. stop and shutdown  
    // destroyWindow("Camera");    
    context.StopGeneratingAll();  
    // context.Shutdown();  
    context.Release();
    return 0;  
}  


