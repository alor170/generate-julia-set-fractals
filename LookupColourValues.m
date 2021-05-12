function [colourLookup] = LookupColourValues(colourName, colourArray, colourValues)
%looks up the colour values for a named colour, from a list of provided
%colours and their values. The case will be ignored. If colour not found
% error message is displayed saying Colour not found and default values of
% 0 0 0 are returned
%Inputs:
%colourName - string containing name of a colour to look up
%colourArray - cell array of colour names, each element of cell array is
% a colour name stored as a string.
%colourValues - 2D array of colour values where each row contains the three
%colour values read in from the file (for the colour in the corresponding
%row of the colour names array)
% Output:
%colourLookup - 1 × 3 element array of colour values for the
%colour that was looked up.
%Author: Allie Deacon

%create variable that will store the row number if colour name is found
lookup = 0;

%check the cell array for the colour name
for i = 1:length(colourArray)
    if strcmpi(colourName, colourArray{i})
        %variable stores position of cell array that colour name is found
        lookup = i;
    end
end

%check if colour was found - if not, an error message will be printed and
%default values assigned. If it has, rgb values for the colour are assigned
if lookup == 0
    %print error message
    fprintf(2, '%s\n' ,'Colour not found');
    colourLookup = [0 0 0];
else
    %get rgb values from colourValues using lookup value
    colourLookup = colourValues(lookup, :);
end
end

