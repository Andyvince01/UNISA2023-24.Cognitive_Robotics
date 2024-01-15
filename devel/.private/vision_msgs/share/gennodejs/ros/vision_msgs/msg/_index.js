
"use strict";

let Classification3D = require('./Classification3D.js');
let Classification2D = require('./Classification2D.js');
let Detection3D = require('./Detection3D.js');
let ObjectHypothesis = require('./ObjectHypothesis.js');
let VisionInfo = require('./VisionInfo.js');
let Detection2DArray = require('./Detection2DArray.js');
let BoundingBox3DArray = require('./BoundingBox3DArray.js');
let Detection3DArray = require('./Detection3DArray.js');
let ObjectHypothesisWithPose = require('./ObjectHypothesisWithPose.js');
let BoundingBox2DArray = require('./BoundingBox2DArray.js');
let BoundingBox2D = require('./BoundingBox2D.js');
let Detection2D = require('./Detection2D.js');
let BoundingBox3D = require('./BoundingBox3D.js');

module.exports = {
  Classification3D: Classification3D,
  Classification2D: Classification2D,
  Detection3D: Detection3D,
  ObjectHypothesis: ObjectHypothesis,
  VisionInfo: VisionInfo,
  Detection2DArray: Detection2DArray,
  BoundingBox3DArray: BoundingBox3DArray,
  Detection3DArray: Detection3DArray,
  ObjectHypothesisWithPose: ObjectHypothesisWithPose,
  BoundingBox2DArray: BoundingBox2DArray,
  BoundingBox2D: BoundingBox2D,
  Detection2D: Detection2D,
  BoundingBox3D: BoundingBox3D,
};
