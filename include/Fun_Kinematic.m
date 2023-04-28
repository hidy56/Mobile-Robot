function sys = Fun_Kinematic(t, y, para)

%% Set parameters
% Wheel radius
r = para.r; 
% Wheelbase
L = para.L; 

%% Input left and right wheel speeds
% Left wheel speed
wL = para.wL; 
% Right wheel speed
wR = para.wR; 

%% Calculate wheel linear velocities
vL = wL * r;
vR = wR * r;

%% Calculate vehicle angular and linear velocities
w = (vR - vL) / 2*L;
v = (vR + vL) / 2;

%% Initial Condition
X = y(1);
Y = y(2);
theta = y(3);

%% System
sys(1, :) = cos(theta)*v;
sys(2, :) = sin(theta)*v;
sys(3, :) = w;
end