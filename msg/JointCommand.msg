std_msgs/Header header
uint8 nj                               # number of joints (DOF)

float64[] position                     # desired joint positions     
float64[] velocity                     # desired joint velocities     
float64[] acceleration                 # desired joint accelerations     

# Impedance parameters
float64[] stiffness                    # stiffness
float64[] damping                      # damping

# Feedforward torques
float64[] torques_ff                   # optional: additional joint torques     

# Control mode
uint8 mode                             # control mode flag
