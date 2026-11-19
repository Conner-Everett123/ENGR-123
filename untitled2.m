figure;
hold on;
%square and circle thingy

% Square
xsq = [80, 80, 92, 92, 80];
ysq = [0, 12, 12, 0, 0];
plot(xsq, ysq);

% Circle
T = linspace(0, 2*pi, 100);
xcir = 4*cos(T) + 96;
ycir = 4*sin(T) + 4;
plot(xcir, ycir);

% Projectile motion no bounce
g = 9.8;
v = randi([20, 40]);
theta = 30;
dt = 0.02; % stepsize

tNow = 0;
x = 0;
y = 12;
bounce_c = 0;
xVals = x;
yVals = y;

while y > 0
    tNow = tNow + dt;
    x = v * cosd(theta) * tNow;
    y = 12 + v * sind(theta) * tNow - 0.5 * g * tNow^2;

    xVals(end + 1) = x;
    yVals(end + 1) = y;

    if any(x >= 80 & x <= 92 & y >= 0 & y <= 12) % box 
        
        new_v = v*rand * (1/3 - 1/5) + 1/5;

        if x >= 79.5 
            bounce_c = bounce_c + 1;
            y_new = v * sind(theta) * tNow - 0.5 * g * tNow^2;
            theta = 90;            

        elseif y >= 11.9 
            bounce_c = bounce_c + 1;
            y_new = v * sind(theta) * tNow - 0.5 * g * tNow^2;
            theta = randi([0, 180]); 
    if bounce_c = 3
        break

        end
    end
end

plot(xVals, yVals, 'b-');

axis equal;
grid on;
hold off;
