# compliant_controllers_msgs

ROS 2 interface package providing message types for robot-agnostic compliant controllers in joint and Cartesian space.

Complements the [compliant_controllers](https://github.com/smihael/compliant_controllers) package. Based on the [robot_module_msgs](https://github.com/ReconCycle/robot_module_msgs).

## Messages
- JointCommand.msg
  - nj: uint8 — number of joints (DOF)
  - position, velocity, acceleration: float64[] — desired joint state (size = DOF)
  - stiffness, damping: float64[] — impedance parameters (size = DOF)
  - torques_ff: float64[] — optional feedforward joint torques (size = DOF)
  - mode: uint8 — control mode flag

- CartesianCommand.msg
  - pose: geometry_msgs/Pose — desired end-effector pose
  - velocity: geometry_msgs/Twist — desired end-effector velocity
  - acceleration: geometry_msgs/Accel — desired end-effector acceleration
  - wrench_ff: geometry_msgs/Wrench — optional feedforward wrench
  - stiffness_pos, stiffness_ori: float64[9] — 3x3 stiffness matrices (row-major)
  - damping_pos, damping_ori: float64[9] — 3x3 damping matrices (row-major)
  - nj: uint8 — number of joints (DOF)
  - nullspace_position, nullspace_stiffness, nullspace_damping: float64[] — nullspace targets/impedance (size = DOF)
  - torques_ff: float64[] — optional feedforward joint torques (size = DOF)
  - mode: uint8 — control mode flag

## Build
From your workspace root:

```bash
rosdep install --from-paths src --ignore-src -r -y
colcon build --packages-select compliant_controllers_msgs
source install/setup.bash
```

