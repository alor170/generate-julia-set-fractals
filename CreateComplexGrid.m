function [complexArray] = CreateComplexGrid(n)
%function creates a 2D array of size n x n which stores complex values
%drawn from a square grid of equally spaced points
%Input:
%n - positive integer specifying number of rows + columns for output array
%Output:
%complexArray - 2D array of equally spaced complex values in a grid
%4 corners of the grid are -2+2i, 2+2i, -2-2i and 2-2i and the rest of the 
%values will be in between them
%Author: Allie Deacon

%create arrays from upper and lower boundaries of x and y with n number of
%values
real = linspace(-2, 2, n);
imaginary = linspace(-2i, 2i, n);

%preallocate array size
complexArray = zeros(n);

%assign array values with real and imaginary components
for x = 1:n %rows outer loop
    for y = 1:n %columns inner loop
        complexArray(x,y) = real(y) - imaginary(x);
    end
end
end

