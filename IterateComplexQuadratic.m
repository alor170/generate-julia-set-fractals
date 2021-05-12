function [iterations] = IterateComplexQuadratic(z, c, cutoff)
%function repeatedly applies the complex quadratic f(z) = z^2 + c
%(with z being replaced by f). This continues until the value of f >= 3 or
%the maximum number of iterations is reached (specified by the cutoff).
%if f >=3 output is no of iterations, if max no is reached output is 0
%Inputs:
%z - the initial complex value,
%c - a specified complex value
%cutoff - value that determines the maximum number of iterations to perform
%Outputs:
%iterations - either the number of iterations it took for f >= 3 or 0 if
%max number of iterations was reached
%Author: Allie Deacon

%set f as 0 to satisfy while loop condition + count as a variable to keep
%track of the iteration number
f = 0;
count = 0;

%while loop to carry out equation until f >= 3 or count == cutoff number
while (count < cutoff) && (abs(f) < 3)
    count = count + 1;
    f = z^2 + c; %calculating f from z and c
    z = f; %replace z with f value for next loop around
end

%checking what the output should be - no of iterations (count) or 0
if abs(f) >= 3
    iterations = count;
else
    iterations = 0;
end
end

