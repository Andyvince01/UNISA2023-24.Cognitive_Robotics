// Auto-generated. Do not edit!

// (in-package features.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class TabletServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.input = null;
    }
    else {
      if (initObj.hasOwnProperty('input')) {
        this.input = initObj.input
      }
      else {
        this.input = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TabletServiceRequest
    // Serialize message field [input]
    bufferOffset = std_msgs.msg.String.serialize(obj.input, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TabletServiceRequest
    let len;
    let data = new TabletServiceRequest(null);
    // Deserialize message field [input]
    data.input = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.input);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'features/TabletServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '53159356b214209e01f9f93bea8428fd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/String input
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TabletServiceRequest(null);
    if (msg.input !== undefined) {
      resolved.input = std_msgs.msg.String.Resolve(msg.input)
    }
    else {
      resolved.input = new std_msgs.msg.String()
    }

    return resolved;
    }
};

class TabletServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ack = null;
    }
    else {
      if (initObj.hasOwnProperty('ack')) {
        this.ack = initObj.ack
      }
      else {
        this.ack = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TabletServiceResponse
    // Serialize message field [ack]
    bufferOffset = std_msgs.msg.String.serialize(obj.ack, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TabletServiceResponse
    let len;
    let data = new TabletServiceResponse(null);
    // Deserialize message field [ack]
    data.ack = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.ack);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'features/TabletServiceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '92dac20d0566a4f591e3ecd6dcd3458b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/String ack
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TabletServiceResponse(null);
    if (msg.ack !== undefined) {
      resolved.ack = std_msgs.msg.String.Resolve(msg.ack)
    }
    else {
      resolved.ack = new std_msgs.msg.String()
    }

    return resolved;
    }
};

module.exports = {
  Request: TabletServiceRequest,
  Response: TabletServiceResponse,
  md5sum() { return '8b55dba5ce52d0e4d2c88f751b201113'; },
  datatype() { return 'features/TabletService'; }
};
