close all; clear; clc;

load('data/ControlFigure.mat');
% Plot Mobile Trajectory
figure(1)
hold on;
plot(para.x_ref, para.y_ref);
plot(State(1, :), State(2, :), '--');
xlabel('Time (s)', 'interpreter', 'latex')
ylabel('error (rad)', 'interpreter', 'latex')
setFigureProperties();

% Plot the Error State
figure(2)
hold on;
plot(t, State(4, :));
plot(t, State(5, :));
plot(t, State(6, :));
xlabel('Time (s)', 'interpreter', 'latex')
ylabel('error (rad)', 'interpreter', 'latex')
setFigureProperties();

