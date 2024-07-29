% Task 8 - Create Input Voltage Signals
% Define Trapezoidal Velocity Profile
% Parameters
V_max = 1.0; % Maximum velocity (m/s)
a = 0.5; % Acceleration (m/s^2)
dt = 0.01; % Time step (s)

% Calculate the time for each phase
t_acc = V_max / a;
t_slew = 10; 
t_dec = t_acc;

% Total time
T_total = 2*t_acc + t_slew;

% Time vector
time = 0:dt:T_total;

% Velocity profile
velocity = zeros(size(time));
for i = 1:length(time)
    if time(i) < t_acc
        velocity(i) = a * time(i);
    elseif time(i) < t_acc + t_slew
        velocity(i) = V_max;
    else
        velocity(i) = V_max - a * (time(i) - (t_acc + t_slew));
    end
end

% Plot the velocity profile
%figure;
%plot(time, velocity, 'LineWidth', 2);
%xlabel('Time (seconds)');
%ylabel('Velocity (m/s)');
%title('Trapezoidal Velocity Profile');
%grid on;

% Generate Voltage Signals for Motors
% Motor parameters (example values)
k_v = 1.0; % Motor constant (V/(m/s))

% Voltage signals
voltage_left = k_v * velocity;
voltage_right = k_v * velocity;

% Plot the voltage signals
figure;
plot(time, voltage_left, 'r', 'LineWidth', 2);
hold on;
plot(time, voltage_right, 'b', 'LineWidth', 2);
xlabel('Time (seconds)');
ylabel('Voltage (V)');
title('Input Voltage Signals for Motors');
grid on;
