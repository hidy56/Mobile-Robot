function sys = Fun_Control(t, x0, para)

%% Initial Condition 
x = x0(1);
y = x0(2);
theta = x0(3);

%% Control Gain
k1 = para.k1;
k2 = para.k2;
k3 = para.k3;

%% Reference Command
x_ref = interp1(para.t, para.x_ref, t);
y_ref = interp1(para.t, para.y_ref, t);
theta_ref = atan2(y_ref, x_ref);
v_ref = para.v_ref;
w_ref = para.w_ref;

%% the Error
e_x = x_ref-x;
e_y = y_ref-y;
e_theta = theta_ref-theta;

%% the Tracking Error
e1 = cos(theta)*e_x + sin(theta)*e_y;
e2 = -sin(theta)*e_x + cos(theta)*e_y;
e3 = e_theta;

%% Backstepping Method
u1 = v_ref*cos(e3) + k1*e1;
u2 = w_ref + k2*v_ref*e2 + k3*v_ref*sin(e3);

%% System 
sys(1, :) = cos(theta)*u1;
sys(2, :) = sin(theta)*u1;
sys(3, :) = u2;
sys(4, :) = -u1 + e2*u2 + v_ref*cos(e3);
sys(5, :) = -e1*u2 + v_ref*sin(e3);
sys(6, :) = w_ref - u2;

end