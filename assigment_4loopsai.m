%Conner Everett ENGR-123 assigment 4 loops ai
t = linspace(0, 10*pi, 500);
x = sin(t);
y = cos(t);
z = t;

plot3(x, y, z, 'LineWidth', 2);
grid on;
xlabel('X Axis');
ylabel('Y Axis');
zlabel('Z Axis');
title('3D Helix Plot');
