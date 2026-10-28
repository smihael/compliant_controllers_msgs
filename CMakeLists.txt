cmake_minimum_required(VERSION 3.5)
project(compliant_controllers_msgs)

find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(std_msgs REQUIRED)
find_package(builtin_interfaces REQUIRED)

set(msg_files
  "msg/CartesianCommand.msg"
  "msg/JointCommand.msg"
)

rosidl_generate_interfaces(${PROJECT_NAME}
  ${msg_files}
  "srv/SetPayload.srv"
  DEPENDENCIES geometry_msgs std_msgs builtin_interfaces
)

ament_export_dependencies(rosidl_default_runtime)
ament_package()
