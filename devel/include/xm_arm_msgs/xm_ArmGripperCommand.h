// Generated by gencpp from file xm_arm_msgs/xm_ArmGripperCommand.msg
// DO NOT EDIT!


#ifndef XM_ARM_MSGS_MESSAGE_XM_ARMGRIPPERCOMMAND_H
#define XM_ARM_MSGS_MESSAGE_XM_ARMGRIPPERCOMMAND_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace xm_arm_msgs
{
template <class ContainerAllocator>
struct xm_ArmGripperCommand_
{
  typedef xm_ArmGripperCommand_<ContainerAllocator> Type;

  xm_ArmGripperCommand_()
    : position(0.0)
    , torque(0.0)  {
    }
  xm_ArmGripperCommand_(const ContainerAllocator& _alloc)
    : position(0.0)
    , torque(0.0)  {
  (void)_alloc;
    }



   typedef double _position_type;
  _position_type position;

   typedef double _torque_type;
  _torque_type torque;





  typedef boost::shared_ptr< ::xm_arm_msgs::xm_ArmGripperCommand_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::xm_arm_msgs::xm_ArmGripperCommand_<ContainerAllocator> const> ConstPtr;

}; // struct xm_ArmGripperCommand_

typedef ::xm_arm_msgs::xm_ArmGripperCommand_<std::allocator<void> > xm_ArmGripperCommand;

typedef boost::shared_ptr< ::xm_arm_msgs::xm_ArmGripperCommand > xm_ArmGripperCommandPtr;
typedef boost::shared_ptr< ::xm_arm_msgs::xm_ArmGripperCommand const> xm_ArmGripperCommandConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::xm_arm_msgs::xm_ArmGripperCommand_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::xm_arm_msgs::xm_ArmGripperCommand_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace xm_arm_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'xm_arm_msgs': ['/home/brucechen/dosubot_ws/src/xm_arm_msgs/msg', '/home/brucechen/dosubot_ws/devel/share/xm_arm_msgs/msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::xm_arm_msgs::xm_ArmGripperCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::xm_arm_msgs::xm_ArmGripperCommand_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::xm_arm_msgs::xm_ArmGripperCommand_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::xm_arm_msgs::xm_ArmGripperCommand_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::xm_arm_msgs::xm_ArmGripperCommand_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::xm_arm_msgs::xm_ArmGripperCommand_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::xm_arm_msgs::xm_ArmGripperCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c571c356574ad59e90e484d638ffc0f0";
  }

  static const char* value(const ::xm_arm_msgs::xm_ArmGripperCommand_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc571c356574ad59eULL;
  static const uint64_t static_value2 = 0x90e484d638ffc0f0ULL;
};

template<class ContainerAllocator>
struct DataType< ::xm_arm_msgs::xm_ArmGripperCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "xm_arm_msgs/xm_ArmGripperCommand";
  }

  static const char* value(const ::xm_arm_msgs::xm_ArmGripperCommand_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::xm_arm_msgs::xm_ArmGripperCommand_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 position\n\
float64 torque\n\
";
  }

  static const char* value(const ::xm_arm_msgs::xm_ArmGripperCommand_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::xm_arm_msgs::xm_ArmGripperCommand_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.position);
      stream.next(m.torque);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct xm_ArmGripperCommand_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::xm_arm_msgs::xm_ArmGripperCommand_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::xm_arm_msgs::xm_ArmGripperCommand_<ContainerAllocator>& v)
  {
    s << indent << "position: ";
    Printer<double>::stream(s, indent + "  ", v.position);
    s << indent << "torque: ";
    Printer<double>::stream(s, indent + "  ", v.torque);
  }
};

} // namespace message_operations
} // namespace ros

#endif // XM_ARM_MSGS_MESSAGE_XM_ARMGRIPPERCOMMAND_H
