%  CS 371 – Assignment 2, Question 4

i = 0; % iteration count
x = 1; % initialize x0 = 1

while i<20
    i = i + 1; % update iteration count
    x = h(x); % update Xk = Xk-1

    fprintf("%f, ", x)
    if i == 10
        fprintf("\n")
    end
end

function gx = g(x)
% Function to compute g(x) = sqrt((x + 3 - x^4) / 2)
gx = sqrt((x + 3 - x.^4) / 2);
end


function hx = h(x)
% Function to compute h(x)
hx = (3*x.^4 + 2*x.^2 + 3) ./ (4*x.^3 + 4*x - 1);
end

