function [colourMap] = CreateColourmap(startColour, endingColour, n)
%creates a custom colour map, with n shades of colour that range from a
%specified starting colour through to a specified ending colour.
%Inputs:
%startColour - 1x3 colour value array for starting map colour,
%endingColour - 1x3 colour value array for ending map colour,
%n - number of rows for colour map array
%Output:
%colourMap - nx3 colour map array where each row represents a colour.
%1st column will be red values, 2nd green, 3rd blue
%Author: Allie Deacon

%create arrays for each colour from start value to end value with n points
red = linspace(startColour(1), endingColour(1), n);
green = linspace(startColour(2), endingColour(2), n);
blue = linspace(startColour(3), endingColour(3), n);

%add each colour array into the colourmap array, for all rows of the column
%the colour corresponds to.
colourMap(:,1) = red;
colourMap(:,2) = green;
colourMap(:,3) = blue;
end

