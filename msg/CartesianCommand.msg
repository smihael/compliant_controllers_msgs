std_msgs/Header header                   # Reference coordinate frame and command timestamp
string target_frame                  # Required tool frame relative to control_frame, resolved from URDF or timestamped TF

geometry_msgs/Pose pose                  # Desired pose of target_frame, expressed in header.frame_id
geometry_msgs/Twist velocity             # desired absolute twist at target_frame, in header axes
geometry_msgs/Accel acceleration         # desired end-effector acceleration
geometry_msgs/Wrench wrench              # desired interaction wrench (force and torque)
geometry_msgs/Wrench wrench_ff           # feedforward wrench at target_frame, in header axes

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
