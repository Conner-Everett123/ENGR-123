%loops assigment 4 9/8/26 Conner Everett YANN ENGR-123 mulipaction table
n = 7;
vec(n);
function vec(n)
for row = 1:n
    for col = 1:row
        fprintf('%3d', row * col);
    end
    fprintf('\n');
end
end
