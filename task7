%Task 7 - Create the planar path 
% Define the points of interest coordinates for the path 
start_point = [0, 0];
spin_point1 = [-15, 0];
spin_point2 = [-15, 10];
end_point = [-7, 10];

% Combine all points into a single matrix
path_points = [start_point; spin_point1; spin_point2; end_point];

% Plot the Path
figure;
plot(path_points(:,1), path_points(:,2), 'o-', 'LineWidth', 2);
hold on;
plot(spin_point1(1), spin_point1(2), 'ro', 'MarkerFaceColor', 'r');
plot(spin_point2(1), spin_point2(2), 'ro', 'MarkerFaceColor', 'r');
xlabel('X (meters)');
ylabel('Y (meters)');
title('Planned Path for the Robot');
grid on;
