% Define the total period and the haversine wave period in meters
T_wave = 0.01; % Duration of the haversine wave within the period in meters
T_flat = 0.3048; % Duration of the flat part in meters
T_total = T_wave + T_flat; % Total period of the function in meters

% Define the amplitude for the haversine wave in meters
amplitude = 0.0025; % Peak-to-peak is 0.005 meters, so amplitude is 0.005 / 2

% Define the range for t
t = linspace(0, 3*T_total, 1000); % 3 periods for illustration

% Preallocate y for efficiency
y = zeros(size(t));

% Calculate y(t) for each value of t
for i = 1:length(t)
    % Find the current time within the period
    t_mod = mod(t(i), T_total);
    
    if t_mod <= T_wave
        % Inverted haversine wave part
        y(i) = -amplitude * (1 - cos(2 * pi * t_mod / T_wave)) +1;
    else
        % Flat line part
        y(i) = 1;
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
