function [juliaArray] = GenerateJuliaSets(complexValues, n, colourMap)
%takes a sequence of complex values and generates the corresponding
%sequence of Julia set (JS) images.
%Inputs:
%complexValues - 1D array of complex values to generate JS fractals for
%n - value specifying the grid size to use (n x n)
%colourMap - 2D array of size r × 3 containing a colour map
%Output:
%juliaArray - cell array where each element contains RGB image of a JS
%Author: Allie Deacon

%preallocate juliaArray size
juliaArray = {zeros(n, n, 3)};

%get values for row number of colourMap (for cutoff value)
[rows, ~] = size(colourMap);

%use CreateComplexGrid to create an array of complex numbers to test the
%nature of
complexArray = CreateComplexGrid(n);

%find the nature of points for each complex value then create RGB images
%for each of them and store in cell array
for i = 1:length(complexValues)
    pointNature = JuliaSetPoints(complexArray, complexValues(i), rows);
    juliaArray{i} = ColourJulia(pointNature,colourMap);
end
end

