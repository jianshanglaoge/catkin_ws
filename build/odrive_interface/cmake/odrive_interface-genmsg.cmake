# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "odrive_interface: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iodrive_interface:/home/bobdabot/catkin_ws/src/odrive_interface/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(odrive_interface_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/bobdabot/catkin_ws/src/odrive_interface/msg/VelocityControl.msg" NAME_WE)
add_custom_target(_odrive_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "odrive_interface" "/home/bobdabot/catkin_ws/src/odrive_interface/msg/VelocityControl.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(odrive_interface
  "/home/bobdabot/catkin_ws/src/odrive_interface/msg/VelocityControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/odrive_interface
)

### Generating Services

### Generating Module File
_generate_module_cpp(odrive_interface
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/odrive_interface
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(odrive_interface_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(odrive_interface_generate_messages odrive_interface_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bobdabot/catkin_ws/src/odrive_interface/msg/VelocityControl.msg" NAME_WE)
add_dependencies(odrive_interface_generate_messages_cpp _odrive_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(odrive_interface_gencpp)
add_dependencies(odrive_interface_gencpp odrive_interface_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS odrive_interface_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(odrive_interface
  "/home/bobdabot/catkin_ws/src/odrive_interface/msg/VelocityControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/odrive_interface
)

### Generating Services

### Generating Module File
_generate_module_eus(odrive_interface
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/odrive_interface
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(odrive_interface_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(odrive_interface_generate_messages odrive_interface_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bobdabot/catkin_ws/src/odrive_interface/msg/VelocityControl.msg" NAME_WE)
add_dependencies(odrive_interface_generate_messages_eus _odrive_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(odrive_interface_geneus)
add_dependencies(odrive_interface_geneus odrive_interface_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS odrive_interface_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(odrive_interface
  "/home/bobdabot/catkin_ws/src/odrive_interface/msg/VelocityControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/odrive_interface
)

### Generating Services

### Generating Module File
_generate_module_lisp(odrive_interface
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/odrive_interface
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(odrive_interface_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(odrive_interface_generate_messages odrive_interface_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bobdabot/catkin_ws/src/odrive_interface/msg/VelocityControl.msg" NAME_WE)
add_dependencies(odrive_interface_generate_messages_lisp _odrive_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(odrive_interface_genlisp)
add_dependencies(odrive_interface_genlisp odrive_interface_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS odrive_interface_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(odrive_interface
  "/home/bobdabot/catkin_ws/src/odrive_interface/msg/VelocityControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/odrive_interface
)

### Generating Services

### Generating Module File
_generate_module_nodejs(odrive_interface
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/odrive_interface
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(odrive_interface_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(odrive_interface_generate_messages odrive_interface_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bobdabot/catkin_ws/src/odrive_interface/msg/VelocityControl.msg" NAME_WE)
add_dependencies(odrive_interface_generate_messages_nodejs _odrive_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(odrive_interface_gennodejs)
add_dependencies(odrive_interface_gennodejs odrive_interface_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS odrive_interface_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(odrive_interface
  "/home/bobdabot/catkin_ws/src/odrive_interface/msg/VelocityControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/odrive_interface
)

### Generating Services

### Generating Module File
_generate_module_py(odrive_interface
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/odrive_interface
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(odrive_interface_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(odrive_interface_generate_messages odrive_interface_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bobdabot/catkin_ws/src/odrive_interface/msg/VelocityControl.msg" NAME_WE)
add_dependencies(odrive_interface_generate_messages_py _odrive_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(odrive_interface_genpy)
add_dependencies(odrive_interface_genpy odrive_interface_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS odrive_interface_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/odrive_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/odrive_interface
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(odrive_interface_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(odrive_interface_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/odrive_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/odrive_interface
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(odrive_interface_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(odrive_interface_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/odrive_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/odrive_interface
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(odrive_interface_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(odrive_interface_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/odrive_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/odrive_interface
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(odrive_interface_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(odrive_interface_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/odrive_interface)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/odrive_interface\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/odrive_interface
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(odrive_interface_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(odrive_interface_generate_messages_py std_msgs_generate_messages_py)
endif()
