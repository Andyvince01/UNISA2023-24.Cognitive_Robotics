// Auto-generated. Do not edit!

// (in-package features.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RestRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RestRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RestRequest
    let len;
    let data = new RestRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'features/RestRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RestRequest(null);
    return resolved;
    }
};

class RestResponse {
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
    // Serializes a message object of type RestResponse
    // Serialize message field [ack]
    bufferOffset = std_msgs.msg.String.serialize(obj.ack, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RestResponse
    let len;
    let data = new RestResponse(null);
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
    return 'features/RestResponse';
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
    const resolved = new RestResponse(null);
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
  Request: RestRequest,
  Response: RestResponse,
  md5sum() { return '92dac20d0566a4f591e3ecd6dcd3458b'; },
  datatype() { return 'features/Rest'; }
};
