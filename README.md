# toy-cannon-bisection
Computes the launch angle θ that lets a 10 m/s toy cannon hit a target 5 m away by framing the range equation as f(θ)=0 and solving it with a self-written bisection routine, while logging the error at each step to verify the expected √2 convergence rate.

%
%  FILE        :  toy_cannon_bisection.m   
%  PURPOSE     :  Demonstrate a fixed-point / Newton-style iteration by
%                 repeatedly applying the update rule
%                       x_{k+1} = h(x_k)
%                 starting from x₀ = 1 and printing the first 20 iterates.
%
%  UPDATE RULE :  h(x) = (3 x⁴ + 2 x² + 3) / (4 x³ + 4 x – 1)
%                 (derived in the written solution; see report)
%
%  ALSO GIVEN  :  g(x) = √[ (x + 3 – x⁴) / 2 ]
%                 Included for reference; not used in this driver script.
%
%  INPUT  :  none (x₀ and iteration limit are hard-coded below)
%  OUTPUT :  to console – the 20 successive approximations, with a line
%            break after the 10ᵗʰ iterate for readability.
%
