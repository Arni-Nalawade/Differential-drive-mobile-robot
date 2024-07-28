T_wave = 0.05; % Duration of the haversine wave within the period in meters
T_flat = 1; % Duration of the flat part in meters
T_total = T_wave + T_flat; % Total period of the function in meters

% Define the amplitude for the haversine wave in meters
amplitude = 0.015; % Peak-to-peak is 0.005 meters, so amplitude is 0.005 / 2

% Define the range for t
t = linspace(0, 1*T_total, 10000); % 3 periods for illustration

% Preallocate y for efficiency
y = zeros(size(t));

% Calculate y(t) for each value of t
for i = 1:length(t)
    % Find the current time within the period
    t_mod = mod(t(i), T_total);
    
    if t_mod <= T_wave
        % Inverted haversine wave part
        y(i) = amplitude * (1 - cos(2 * pi * t_mod / T_wave));
    else
        % Flat line part
        y(i) = 0;
    end
end

% Plotting
figure;
plot(t, y);

% Adding labels and title
xlabel('t [m]');
ylabel('y(t) [m]');
title('Periodic function with inverted haversine and flat line');
grid on;
