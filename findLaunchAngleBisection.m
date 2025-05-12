% cs371 A2q4

a = 0.0; % interval lower bound
b = 0.4*pi; % intercal upper bound
c = 1; % initialize c
fc = f(c);

tol = 1e-5; % error tolerance
i = 0; % iteration count
i_max = 50; % maximum iteration
errors = zeros(i_max, 1); % create an array to store errors

exact_theta = asin((5*9.81)/10^2)/2; % exact angle using projectile formula
err_i = 0; % iteration i measure error

while abs(b - a) > tol && i < i_max
    % bisection interation

    i = i+1;
    c = (a+b)/2; % c takes the midpoint between a and b

    % distance at a, b, c angle
    fc = f(c);
    fa = f(a);
    fb = f(b);

    % update upperbound / lowerbound
    if fa*fb <= 0
        if fc*fa <= 0
            b = c;
        elseif fc*fb <= 0
            a = c;
        else
            break;
        end
    else
        break;
    end

    err_i = abs(fc-exact_theta); % error at iteration i
    errors(i) = err_i;
    fprintf('e_%d %f\n', i, err_i);
end

fprintf('root: \n');
disp(c)

% Computing theorectical convergence rate
rates = abs(errors(2:i) - errors(1:i-1));
average_rate = mean(rates);
fprintf('Computed convergence ratios:\n');
q = abs((log(errors(1:i-1))-log(average_rate))./log(errors(2:i)));
disp(mean(q));



function find_root = f(x)
% calculate distance at angle x using projectile formula

find_root = (10^2 * sin(2*x))/ 9.81 - 5; % projectile formula

end


% Since out algorithm is using bisection method, we know that it converges
%   at least linearly be definition
% We also have the relationship L_i+1 = 0.5*L_i, where L_i := abs(b_i-a_i)]
