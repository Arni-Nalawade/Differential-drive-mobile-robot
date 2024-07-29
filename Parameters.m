%% For motors
La=5.50e-6; % (H),inductance of the armature winding
Ra=4; % (Ohm),resistance of the armature winding
Kb=0.0726; % (V/rad/s),the back emf constant 

N=1;  %the gear ratio
Kt=0.0724; % (Nm/Amp),the torque constant

R = 5e-2;% (m),radius of wheel in meter
R_cylin = 25e-2;% (m),radius of system
M = 20; % (kg),Robot mass(loading included)
J = (1/2)*(M * (R)^2); % (kg*m^2),Moment inertia of robot 
d = 3e-2; % (m),Location of center of gravity of robot.
L = 25e-2;% (m),distance between wheel in meter

%% For Suspension:
k = 80000; % Spring Coefficient
c = 650; % Damping Coefficient

%% Constants for door and tile thresholds
T_wave = 0.01;% Duration of the haversine wave within the period in meters
T_flat = 0.3048; % Duration of the flat part in meters
amp = 0.0025; % Peak-to-peak is 0.005 meters, so amplitude is 0.005 / 2

D_wave = 0.05;% Duration of the haversine wave within the period in meters
D_flat = 1; % Duration of the flat part in meters
D_total = D_flat + D_wave;
D_amp = 0.015; 