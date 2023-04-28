function y = Fun_Runge_Kutta(Fun, t, x0, para)

% StepSize
h = t(end)/(size(t, 2)-1);
n = size(x0, 1);

% Initial Condition
y = zeros(length(t), n)';
y(:, 1) = x0;

for i = 1:(length(t)-1)
    k1 = Fun(t(i), y(:, i), para);
    k2 = Fun(t(i)+h/2, y(:, i)+h*k1/2, para);
    k3 = Fun(t(i)+h/2, y(:, i)+h*k2/2, para);
    k4 = Fun(t(i)+h, y(:, i)+h*k3, para);
    y(:, i+1) = y(:, i) + (k1+2*k2+2*k3+k4)*h/6;  
end
end