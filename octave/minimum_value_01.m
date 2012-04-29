# Question:- Find the minimum value of a function y(x) = x^2+x+1 over the
# interval [0, 1];

1;  # Let octave treat this as a script instead of function.

function y = hw1fun(x)
  y = x^2+x+1;
end

# display the function value at x=2, to cross check.
hw1fun(2)

# function reaches a minimum at x, the minimum value is v.
[x, v] = fminbnd (@hw1fun, 0, 1)
