% Dr YANN conner everett assigment 5
function [output1, output2, output3] = Assigment_5_if
output1 = xGate();
output2 = yGate();
output3 = zGate();
end

function output1 = xGate()
output1 = zeros(8, 4);
row = 1;

for A = 0:1
    for B = 0:1
        for C = 0:1
            if (A && B) || ~C
                y = 1;
            else
                y = 0;
            end

            output1(row, :) = [A, B, C, y];
            fprintf('%d %d %d %d\n', A, B, C, y);
            row = row + 1;
        end
    end
end
end

function output2 = yGate()
output2 = zeros(4, 3);
row = 1;

for a = 0:1
    for b = 0:1
        if (a && b) || ~b
            y = 1;
        else
            y = 0;
        end

        output2(row, :) = [a, b, y];
        fprintf('%d %d %d\n', a, b, y);
        row = row + 1;
    end
end
end

function output3 = zGate()
output3 = zeros(4, 3);
row = 1;

for a = 0:1
    for b = 0:1
        if (a && b) || ~(a && b)
            y = 1;
        else
            y = 0;
        end

        output3(row, :) = [a, b, y];
        fprintf('%d %d %d\n', a, b, y);
        row = row + 1;
    end
end
end
