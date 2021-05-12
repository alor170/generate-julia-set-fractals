function [pointNature] = JuliaSetPoints(complexArray, c, cutoff)
%determines whether or not each point in a grid of complex values is a
%member of the Julia set associated with a specified complex value c
%if within region 0 will be returned. If out the region the number of
%iterations it took for it to be out the region will be returned
%Inputs:
% complexArray - 2D array storing grid of complex values we will determine
% the nature of.
%c - a specified complex value used to generate a Julia set.
%cutoff - value that determines the maximum number of iterations to perform
% Output:
%pointNature - 2D array describing  nature of each point on  grid.
%Author: Allie Deacon

%get number of rows and columns from input array
[row, column] = size(complexArray);

%preallocate pointNature size
pointNature = zeros(row, column);

%call IterateComplex function and add output to the array pointNature
for i = 1:column %columns outer loop
    for j = 1:row %rows inner loop
        pointNature(j,i) = IterateComplexQuadratic(complexArray(j,i), c, cutoff);
    end
end
end

