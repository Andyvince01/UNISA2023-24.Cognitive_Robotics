# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "chatbot: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(chatbot_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/chatbot/srv/Dialogue.srv" NAME_WE)
add_custom_target(_chatbot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "chatbot" "/home/andyvince01/Desktop/Project/src/chatbot/srv/Dialogue.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(chatbot
  "/home/andyvince01/Desktop/Project/src/chatbot/srv/Dialogue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/chatbot
)

### Generating Module File
_generate_module_cpp(chatbot
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/chatbot
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(chatbot_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(chatbot_generate_messages chatbot_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/chatbot/srv/Dialogue.srv" NAME_WE)
add_dependencies(chatbot_generate_messages_cpp _chatbot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(chatbot_gencpp)
add_dependencies(chatbot_gencpp chatbot_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS chatbot_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(chatbot
  "/home/andyvince01/Desktop/Project/src/chatbot/srv/Dialogue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/chatbot
)

### Generating Module File
_generate_module_eus(chatbot
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/chatbot
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(chatbot_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(chatbot_generate_messages chatbot_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/chatbot/srv/Dialogue.srv" NAME_WE)
add_dependencies(chatbot_generate_messages_eus _chatbot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(chatbot_geneus)
add_dependencies(chatbot_geneus chatbot_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS chatbot_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(chatbot
  "/home/andyvince01/Desktop/Project/src/chatbot/srv/Dialogue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/chatbot
)

### Generating Module File
_generate_module_lisp(chatbot
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/chatbot
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(chatbot_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(chatbot_generate_messages chatbot_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/chatbot/srv/Dialogue.srv" NAME_WE)
add_dependencies(chatbot_generate_messages_lisp _chatbot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(chatbot_genlisp)
add_dependencies(chatbot_genlisp chatbot_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS chatbot_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(chatbot
  "/home/andyvince01/Desktop/Project/src/chatbot/srv/Dialogue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/chatbot
)

### Generating Module File
_generate_module_nodejs(chatbot
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/chatbot
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(chatbot_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(chatbot_generate_messages chatbot_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/chatbot/srv/Dialogue.srv" NAME_WE)
add_dependencies(chatbot_generate_messages_nodejs _chatbot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(chatbot_gennodejs)
add_dependencies(chatbot_gennodejs chatbot_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS chatbot_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(chatbot
  "/home/andyvince01/Desktop/Project/src/chatbot/srv/Dialogue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/chatbot
)

### Generating Module File
_generate_module_py(chatbot
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/chatbot
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(chatbot_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(chatbot_generate_messages chatbot_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/andyvince01/Desktop/Project/src/chatbot/srv/Dialogue.srv" NAME_WE)
add_dependencies(chatbot_generate_messages_py _chatbot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(chatbot_genpy)
add_dependencies(chatbot_genpy chatbot_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS chatbot_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/chatbot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/chatbot
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(chatbot_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/chatbot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/chatbot
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(chatbot_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/chatbot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/chatbot
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(chatbot_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/chatbot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/chatbot
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(chatbot_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/chatbot)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/chatbot\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/chatbot
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(chatbot_generate_messages_py std_msgs_generate_messages_py)
endif()
