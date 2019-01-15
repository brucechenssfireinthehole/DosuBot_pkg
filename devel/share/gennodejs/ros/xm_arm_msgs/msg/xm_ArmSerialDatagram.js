// Auto-generated. Do not edit!

// (in-package xm_arm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class xm_ArmSerialDatagram {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sender = null;
      this.receiver = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('sender')) {
        this.sender = initObj.sender
      }
      else {
        this.sender = 0;
      }
      if (initObj.hasOwnProperty('receiver')) {
        this.receiver = initObj.receiver
      }
      else {
        this.receiver = 0;
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type xm_ArmSerialDatagram
    // Serialize message field [sender]
    bufferOffset = _serializer.uint8(obj.sender, buffer, bufferOffset);
    // Serialize message field [receiver]
    bufferOffset = _serializer.uint8(obj.receiver, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _arraySerializer.uint8(obj.data, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type xm_ArmSerialDatagram
    let len;
    let data = new xm_ArmSerialDatagram(null);
    // Deserialize message field [sender]
    data.sender = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [receiver]
    data.receiver = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.data.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'xm_arm_msgs/xm_ArmSerialDatagram';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fb52cf5e6af617ea0f02003fae608c29';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8   sender
    uint8   receiver
    uint8[] data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new xm_ArmSerialDatagram(null);
    if (msg.sender !== undefined) {
      resolved.sender = msg.sender;
    }
    else {
      resolved.sender = 0
    }

    if (msg.receiver !== undefined) {
      resolved.receiver = msg.receiver;
    }
    else {
      resolved.receiver = 0
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = []
    }

    return resolved;
    }
};

module.exports = xm_ArmSerialDatagram;
