% Define time vector from 0 to 2 seconds with 1000 points
t = linspace(0, 2, 1000);

% Define DC current (constant value of 5 Amps)
I_dc = 5 * ones(size(t));

% Define AC current (sinusoidal wave with peak amplitude of 5 Amps and frequency of 2 Hz)
frequency = 2; % Hz
amplitude = 5; % Amps
I_ac = amplitude * sin(2 * pi * frequency * t);

% Create the plot
figure;
plot(t, I_dc, 'r-', 'LineWidth', 2); % Red solid line for DC
hold on;
plot(t, I_ac, 'b--', 'LineWidth', 2); % Blue dashed line for AC
hold off;

% Add labels, title, legend, and grid for clarity
xlabel('Time (seconds)', 'FontSize', 12);
ylabel('Current (Amperes)', 'FontSize', 12);
title('Comparison of DC and AC Current', 'FontSize', 14);
legend({'DC Current', 'AC Current'}, 'Location', 'northeast', 'FontSize', 11);
grid on;

% Set axis limits for better visualization
xlim([0 2]);
ylim([-6 6]);
