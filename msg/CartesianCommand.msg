geometry_msgs/Pose pose                  # desired end-effector pose
geometry_msgs/Twist velocity             # desired end-effector velocity
geometry_msgs/Accel acceleration         # desired end-effector acceleration
geometry_msgs/Wrench wrench_ff           # optional: additional feedforward wrench

float64[9] stiffness_pos                 # 3x3 positional stiffness matrix (row-major)
float64[9] stiffness_ori                 # 3x3 orientational stiffness matrix (row-major)
float64[9] damping_pos                   # 3x3 positional damping matrix (row-major)
float64[9] damping_ori                   # 3x3 orientational damping matrix (row-major)

uint8 nj                                 # number of joints (DOF)

float64[] nullspace_position             # desired nullspace joint position (size = DOF)
float64[] nullspace_stiffness            # nullspace stiffness (size = DOF)
float64[] nullspace_damping              # optional: nullspace damping (size = DOF)
float64[] torques_ff                     # optional: additional joint torques (size = DOF)

uint8 mode                               # control mode flag
