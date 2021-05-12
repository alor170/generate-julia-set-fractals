function [imageRGB] = ColourJulia(pointNature,colourMap)
%colours the points in a Julia set black and the points outside of the set
%an appropriate shade of colour selected from a provided colour map.
%Inputs:
%pointNature - 2D array describing nature of each point on a grid. 0 if
%it's in the Julia set or a number >0 and <= cutoff if it's out
%colourMap - 2D array of size r x 3 containing a colour map (r must match
%value of the cutoff used to generate Julia set). The colour values in a
%row will be between 0 and 1 inclusive
%Output:
%imageRGB - RGB image of Julia set. 3D array of uint8 values size n x n x 3
%colour values will be unsigned integers between 0 and 255 inclusive
%Author: Allie Deacon

%get number of rows and columns from input array
[row, column] = size(pointNature);

%preallocate imageRGB size and convert values to uint8
imageRGB = zeros(row, column, 3, 'uint8');

%point colour values assigned based on if it's part of a Julia set or not
for i = 1:column %columns outer loop
    for j = 1:row %rows inner loop
        if pointNature(j, i) ~= 0 %colour values from colourMap
            %0 to 1 values are converted to 0 - 255 for rgb images
            imageRGB(j, i, 1) = round(colourMap(pointNature(j,i), 1) * 255);
            imageRGB(j, i, 2) = round(colourMap(pointNature(j,i), 2) * 255);
            imageRGB(j, i, 3) = round(colourMap(pointNature(j,i), 3) * 255);
        end
    end
end
end
