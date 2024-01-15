# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "features: 0 messages, 7 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(features_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/features/srv/AnimationService.srv" NAME_WE)
add_custom_target(_features_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "features" "/home/andyvince01/Desktop/Project/src/features/srv/AnimationService.srv" "std_msgs/String"
)

get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/features/srv/ASRService.srv" NAME_WE)
add_custom_target(_features_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "features" "/home/andyvince01/Desktop/Project/src/features/srv/ASRService.srv" "std_msgs/MultiArrayLayout:std_msgs/String:std_msgs/Int16MultiArray:std_msgs/MultiArrayDimension"
)

get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/features/srv/Rest.srv" NAME_WE)
add_custom_target(_features_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "features" "/home/andyvince01/Desktop/Project/src/features/srv/Rest.srv" "std_msgs/String"
)

get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/features/srv/TabletService.srv" NAME_WE)
add_custom_target(_features_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "features" "/home/andyvince01/Desktop/Project/src/features/srv/TabletService.srv" "std_msgs/String"
)

get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/features/srv/Text2Speech.srv" NAME_WE)
add_custom_target(_features_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "features" "/home/andyvince01/Desktop/Project/src/features/srv/Text2Speech.srv" "std_msgs/String"
)

get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/features/srv/VoiceDetectionService.srv" NAME_WE)
add_custom_target(_features_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "features" "/home/andyvince01/Desktop/Project/src/features/srv/VoiceDetectionService.srv" "std_msgs/MultiArrayLayout:std_msgs/Int16MultiArray:std_msgs/MultiArrayDimension"
)

get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/features/srv/WakeUp.srv" NAME_WE)
add_custom_target(_features_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "features" "/home/andyvince01/Desktop/Project/src/features/srv/WakeUp.srv" "std_msgs/String"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(features
  "/home/andyvince01/Desktop/Project/src/features/srv/AnimationService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/features
)
_generate_srv_cpp(features
  "/home/andyvince01/Desktop/Project/src/features/srv/ASRService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int16MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/features
)
_generate_srv_cpp(features
  "/home/andyvince01/Desktop/Project/src/features/srv/Rest.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/features
)
_generate_srv_cpp(features
  "/home/andyvince01/Desktop/Project/src/features/srv/TabletService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/features
)
_generate_srv_cpp(features
  "/home/andyvince01/Desktop/Project/src/features/srv/Text2Speech.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/features
)
_generate_srv_cpp(features
  "/home/andyvince01/Desktop/Project/src/features/srv/VoiceDetectionService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int16MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/features
)
_generate_srv_cpp(features
  "/home/andyvince01/Desktop/Project/src/features/srv/WakeUp.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/features
)

### Generating Module File
_generate_module_cpp(features
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/features
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(features_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(features_generate_messages features_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/features/srv/AnimationService.srv" NAME_WE)
add_dependencies(features_generate_messages_cpp _features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/features/srv/ASRService.srv" NAME_WE)
add_dependencies(features_generate_messages_cpp _features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/features/srv/Rest.srv" NAME_WE)
add_dependencies(features_generate_messages_cpp _features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/features/srv/TabletService.srv" NAME_WE)
add_dependencies(features_generate_messages_cpp _features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/features/srv/Text2Speech.srv" NAME_WE)
add_dependencies(features_generate_messages_cpp _features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/features/srv/VoiceDetectionService.srv" NAME_WE)
add_dependencies(features_generate_messages_cpp _features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/features/srv/WakeUp.srv" NAME_WE)
add_dependencies(features_generate_messages_cpp _features_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(features_gencpp)
add_dependencies(features_gencpp features_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS features_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(features
  "/home/andyvince01/Desktop/Project/src/features/srv/AnimationService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/features
)
_generate_srv_eus(features
  "/home/andyvince01/Desktop/Project/src/features/srv/ASRService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int16MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/features
)
_generate_srv_eus(features
  "/home/andyvince01/Desktop/Project/src/features/srv/Rest.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/features
)
_generate_srv_eus(features
  "/home/andyvince01/Desktop/Project/src/features/srv/TabletService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/features
)
_generate_srv_eus(features
  "/home/andyvince01/Desktop/Project/src/features/srv/Text2Speech.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/features
)
_generate_srv_eus(features
  "/home/andyvince01/Desktop/Project/src/features/srv/VoiceDetectionService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int16MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/features
)
_generate_srv_eus(features
  "/home/andyvince01/Desktop/Project/src/features/srv/WakeUp.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/features
)

### Generating Module File
_generate_module_eus(features
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/features
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(features_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(features_generate_messages features_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/features/srv/AnimationService.srv" NAME_WE)
add_dependencies(features_generate_messages_eus _features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/features/srv/ASRService.srv" NAME_WE)
add_dependencies(features_generate_messages_eus _features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/features/srv/Rest.srv" NAME_WE)
add_dependencies(features_generate_messages_eus _features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/features/srv/TabletService.srv" NAME_WE)
add_dependencies(features_generate_messages_eus _features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/features/srv/Text2Speech.srv" NAME_WE)
add_dependencies(features_generate_messages_eus _features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/features/srv/VoiceDetectionService.srv" NAME_WE)
add_dependencies(features_generate_messages_eus _features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/features/srv/WakeUp.srv" NAME_WE)
add_dependencies(features_generate_messages_eus _features_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(features_geneus)
add_dependencies(features_geneus features_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS features_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(features
  "/home/andyvince01/Desktop/Project/src/features/srv/AnimationService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/features
)
_generate_srv_lisp(features
  "/home/andyvince01/Desktop/Project/src/features/srv/ASRService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int16MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/features
)
_generate_srv_lisp(features
  "/home/andyvince01/Desktop/Project/src/features/srv/Rest.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/features
)
_generate_srv_lisp(features
  "/home/andyvince01/Desktop/Project/src/features/srv/TabletService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/features
)
_generate_srv_lisp(features
  "/home/andyvince01/Desktop/Project/src/features/srv/Text2Speech.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/features
)
_generate_srv_lisp(features
  "/home/andyvince01/Desktop/Project/src/features/srv/VoiceDetectionService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int16MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/features
)
_generate_srv_lisp(features
  "/home/andyvince01/Desktop/Project/src/features/srv/WakeUp.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/features
)

### Generating Module File
_generate_module_lisp(features
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/features
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(features_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(features_generate_messages features_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/features/srv/AnimationService.srv" NAME_WE)
add_dependencies(features_generate_messages_lisp _features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/features/srv/ASRService.srv" NAME_WE)
add_dependencies(features_generate_messages_lisp _features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/features/srv/Rest.srv" NAME_WE)
add_dependencies(features_generate_messages_lisp _features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/features/srv/TabletService.srv" NAME_WE)
add_dependencies(features_generate_messages_lisp _features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/features/srv/Text2Speech.srv" NAME_WE)
add_dependencies(features_generate_messages_lisp _features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/features/srv/VoiceDetectionService.srv" NAME_WE)
add_dependencies(features_generate_messages_lisp _features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/features/srv/WakeUp.srv" NAME_WE)
add_dependencies(features_generate_messages_lisp _features_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(features_genlisp)
add_dependencies(features_genlisp features_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS features_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(features
  "/home/andyvince01/Desktop/Project/src/features/srv/AnimationService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/features
)
_generate_srv_nodejs(features
  "/home/andyvince01/Desktop/Project/src/features/srv/ASRService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int16MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/features
)
_generate_srv_nodejs(features
  "/home/andyvince01/Desktop/Project/src/features/srv/Rest.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/features
)
_generate_srv_nodejs(features
  "/home/andyvince01/Desktop/Project/src/features/srv/TabletService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/features
)
_generate_srv_nodejs(features
  "/home/andyvince01/Desktop/Project/src/features/srv/Text2Speech.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/features
)
_generate_srv_nodejs(features
  "/home/andyvince01/Desktop/Project/src/features/srv/VoiceDetectionService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int16MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/features
)
_generate_srv_nodejs(features
  "/home/andyvince01/Desktop/Project/src/features/srv/WakeUp.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/features
)

### Generating Module File
_generate_module_nodejs(features
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/features
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(features_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(features_generate_messages features_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/features/srv/AnimationService.srv" NAME_WE)
add_dependencies(features_generate_messages_nodejs _features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/features/srv/ASRService.srv" NAME_WE)
add_dependencies(features_generate_messages_nodejs _features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/features/srv/Rest.srv" NAME_WE)
add_dependencies(features_generate_messages_nodejs _features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/features/srv/TabletService.srv" NAME_WE)
add_dependencies(features_generate_messages_nodejs _features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/features/srv/Text2Speech.srv" NAME_WE)
add_dependencies(features_generate_messages_nodejs _features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/features/srv/VoiceDetectionService.srv" NAME_WE)
add_dependencies(features_generate_messages_nodejs _features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/features/srv/WakeUp.srv" NAME_WE)
add_dependencies(features_generate_messages_nodejs _features_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(features_gennodejs)
add_dependencies(features_gennodejs features_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS features_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(features
  "/home/andyvince01/Desktop/Project/src/features/srv/AnimationService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/features
)
_generate_srv_py(features
  "/home/andyvince01/Desktop/Project/src/features/srv/ASRService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int16MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/features
)
_generate_srv_py(features
  "/home/andyvince01/Desktop/Project/src/features/srv/Rest.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/features
)
_generate_srv_py(features
  "/home/andyvince01/Desktop/Project/src/features/srv/TabletService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/features
)
_generate_srv_py(features
  "/home/andyvince01/Desktop/Project/src/features/srv/Text2Speech.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/features
)
_generate_srv_py(features
  "/home/andyvince01/Desktop/Project/src/features/srv/VoiceDetectionService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Int16MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/features
)
_generate_srv_py(features
  "/home/andyvince01/Desktop/Project/src/features/srv/WakeUp.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/features
)

### Generating Module File
_generate_module_py(features
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/features
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(features_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(features_generate_messages features_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/features/srv/AnimationService.srv" NAME_WE)
add_dependencies(features_generate_messages_py _features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/features/srv/ASRService.srv" NAME_WE)
add_dependencies(features_generate_messages_py _features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/features/srv/Rest.srv" NAME_WE)
add_dependencies(features_generate_messages_py _features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/features/srv/TabletService.srv" NAME_WE)
add_dependencies(features_generate_messages_py _features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/features/srv/Text2Speech.srv" NAME_WE)
add_dependencies(features_generate_messages_py _features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/features/srv/VoiceDetectionService.srv" NAME_WE)
add_dependencies(features_generate_messages_py _features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/features/srv/WakeUp.srv" NAME_WE)
add_dependencies(features_generate_messages_py _features_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(features_genpy)
add_dependencies(features_genpy features_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS features_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/features)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/features
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(features_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/features)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/features
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(features_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/features)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/features
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(features_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/features)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/features
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(features_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/features)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/features\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/features
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(features_generate_messages_py std_msgs_generate_messages_py)
endif()
