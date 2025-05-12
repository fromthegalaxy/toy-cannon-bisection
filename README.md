# toy-cannon-bisection
Computes the launch angle θ that lets a 10 m/s toy cannon hit a target 5 m away by framing the range equation as f(θ)=0 and solving it with a self-written bisection routine, while logging the error at each step to verify the expected √2 convergence rate.

 
Purpose
-------
  Use the bisection method to find the launch angle θ (radians) that lets a
  toy cannon of muzzle speed v = 10 m/s hit a target 5 m away, assuming
  uniform gravity g = 9.81 m/s² and no air resistance.

Inputs (set inside script)
--------------------------
  a, b          – initial bracketing interval for θ       [rad]
  tol           – stopping tolerance on interval width    [rad]
  i_max         – maximum number of iterations

Outputs (printed to console)
----------------------------
  c             – final midpoint ≈ root θ*                [rad]
  errors        – |θ_i – θ_exact| at each iteration
  average_rate  – average ratio of consecutive errors (empirical convergence)

Method
------
  •  Define f(θ) = (v² sin 2θ)/g – 5;  root of f(θ) gives desired range.
  •  Apply classic bisection: repeatedly halve [a,b] while f(a)·f(b) < 0,
     storing the absolute error against the analytical θ_exact.
  •  Verify the expected linear convergence by computing error ratios.

Exact root for comparison
-------------------------
  θ_exact = (1/2) asin((g R)/v²) with R = 5 m.

