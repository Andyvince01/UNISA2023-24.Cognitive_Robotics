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

class AnimationServiceRequest {
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
    // Serializes a message object of type AnimationServiceRequest
    // Serialize message field [input]
    bufferOffset = std_msgs.msg.String.serialize(obj.input, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AnimationServiceRequest
    let len;
    let data = new AnimationServiceRequest(null);
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
    return 'features/AnimationServiceRequest';
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
    const resolved = new AnimationServiceRequest(null);
    if (msg.input !== undefined) {
      resolved.input = std_msgs.msg.String.Resolve(msg.input)
    }
    else {
      resolved.input = new std_msgs.msg.String()
    }

    return resolved;
    }
};

class AnimationServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.output = null;
    }
    else {
      if (initObj.hasOwnProperty('output')) {
        this.output = initObj.output
      }
      else {
        this.output = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AnimationServiceResponse
    // Serialize message field [output]
    bufferOffset = std_msgs.msg.String.serialize(obj.output, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AnimationServiceResponse
    let len;
    let data = new AnimationServiceResponse(null);
    // Deserialize message field [output]
    data.output = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.output);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'features/AnimationServiceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '87e4b3ab48eadee8169367653b22c9a8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/String output
    
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
    const resolved = new AnimationServiceResponse(null);
    if (msg.output !== undefined) {
      resolved.output = std_msgs.msg.String.Resolve(msg.output)
    }
    else {
      resolved.output = new std_msgs.msg.String()
    }

    return resolved;
    }
};

module.exports = {
  Request: AnimationServiceRequest,
  Response: AnimationServiceResponse,
  md5sum() { return 'd8b7e9905e6a815639dc67959117aa3b'; },
  datatype() { return 'features/AnimationService'; }
};
