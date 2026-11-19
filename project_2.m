% Conner Everett Project 2 Yann engr 123
%square
figure;
hold on;

xsq = [80, 80, 92, 92, 80];
ysq = [0, 12, 12, 0, 0];
plot(xsq, ysq);

% circle
T = linspace(0, 2*pi, 100);
xcir = 4*cos(T) + 96;
ycir = 4*sin(T) + 4;
plot(xcir, ycir);

% Projectile motion no bounce
g = 9.8;
v =  rand()*(40-20)+20; %31 hits circle 
theta = 30;
dt = 0.00001; %stepsize

tNow = 0;
x0 = 0;
y0 = 12;
x = x0;
y = y0;
bounce_c = 0;
xVals = x;
yVals = y;

while y > 0 & bounce_c <= 3
    tNow = tNow + dt;
    x = x0 + v * cosd(theta) * tNow;
    y = y0 + v * sind(theta) * tNow - 0.5 * g * tNow^2;

    % keep der loctaion for nex index
    xVals(end + 1) = x;
    yVals(end + 1) = y;

    if x >= 80 && x <= 92 && y >= 0 && y <= 12
        if y > 11.99
            %decrease %stepsize this is kinda of for testing
            bounce_c = bounce_c + 1;
            x0 = x;
            y0 = 12;

            theta = rand()*(180);
            tNow = 0;
            v = v * (rand * (1/3 - 1/5) + 1/5);

        elseif x > 79.99
            bounce_c = bounce_c + 1;
            x0 = 80;
            y0 = y;

            theta = rand()*(270-90)+90;
            tNow = 0;
            v = v * (rand * (1/3 - 1/5) + 1/5);
        end

      
    elseif x >= 92 && x <= 100 && y >= 0 && y <= 8
        if (x - 96)^2 + (y - 4)^2 <= 4^2
            bounce_c = bounce_c + 1;
            x0 = x;
            y0 = y + 0.5;
            theta = randi([0, 180]);
            tNow = 0;
            v = v * (rand * (1/3 - 1/5) + 1/5);
        end
    end

    if bounce_c == 3
        break
    end
end




pretty_x = [-10,150]
pretty_y  = [0,0]
pretty_princesx = [0,0]
pretty_princessy = [0,12]
plot(xVals, yVals);
plot(pretty_x,pretty_y)
plot(pretty_princesx,pretty_princessy)
title('project 2 projectil motion')
axis equal;
grid on;
hold off;
