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

class ASRServiceRequest {
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
        this.input = new std_msgs.msg.Int16MultiArray();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ASRServiceRequest
    // Serialize message field [input]
    bufferOffset = std_msgs.msg.Int16MultiArray.serialize(obj.input, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ASRServiceRequest
    let len;
    let data = new ASRServiceRequest(null);
    // Deserialize message field [input]
    data.input = std_msgs.msg.Int16MultiArray.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Int16MultiArray.getMessageSize(object.input);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'features/ASRServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '86b4e87764583129d2a29ad53eb52ab1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Int16MultiArray input
    
    ================================================================================
    MSG: std_msgs/Int16MultiArray
    # Please look at the MultiArrayLayout message definition for
    # documentation on all multiarrays.
    
    MultiArrayLayout  layout        # specification of data layout
    int16[]           data          # array of data
    
    
    ================================================================================
    MSG: std_msgs/MultiArrayLayout
    # The multiarray declares a generic multi-dimensional array of a
    # particular data type.  Dimensions are ordered from outer most
    # to inner most.
    
    MultiArrayDimension[] dim # Array of dimension properties
    uint32 data_offset        # padding elements at front of data
    
    # Accessors should ALWAYS be written in terms of dimension stride
    # and specified outer-most dimension first.
    # 
    # multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
    #
    # A standard, 3-channel 640x480 image with interleaved color channels
    # would be specified as:
    #
    # dim[0].label  = "height"
    # dim[0].size   = 480
    # dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
    # dim[1].label  = "width"
    # dim[1].size   = 640
    # dim[1].stride = 3*640 = 1920
    # dim[2].label  = "channel"
    # dim[2].size   = 3
    # dim[2].stride = 3
    #
    # multiarray(i,j,k) refers to the ith row, jth column, and kth channel.
    
    ================================================================================
    MSG: std_msgs/MultiArrayDimension
    string label   # label of given dimension
    uint32 size    # size of given dimension (in type units)
    uint32 stride  # stride of given dimension
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ASRServiceRequest(null);
    if (msg.input !== undefined) {
      resolved.input = std_msgs.msg.Int16MultiArray.Resolve(msg.input)
    }
    else {
      resolved.input = new std_msgs.msg.Int16MultiArray()
    }

    return resolved;
    }
};

class ASRServiceResponse {
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
    // Serializes a message object of type ASRServiceResponse
    // Serialize message field [output]
    bufferOffset = std_msgs.msg.String.serialize(obj.output, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ASRServiceResponse
    let len;
    let data = new ASRServiceResponse(null);
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
    return 'features/ASRServiceResponse';
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
    const resolved = new ASRServiceResponse(null);
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
  Request: ASRServiceRequest,
  Response: ASRServiceResponse,
  md5sum() { return 'e84f65894fbd5cd8d89dc52e87b8854a'; },
  datatype() { return 'features/ASRService'; }
};
