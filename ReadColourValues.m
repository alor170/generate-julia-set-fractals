function [colourNames, colourValues] = ReadColourValues(fileName)
%reads in a list of colour names and their values from a specified text
% file, returning the colour names in a cell array and the colour values in
% 2D array.
%Input:
%fileName - string containing the filename of a text file that stores ahel
%mapping of colour names to colour values.
%Outputs:
%colourNames - cell array of colour names, where each element of the cell
%array is a colour name stored as a string.
%colourValues - 2D array of colour values of size r × 3, where each row
%contains the three colour values read in from the file
%Author: Allie Deacon

%open file
fid = fopen(fileName, 'rt');

if fid == -1 %check file has opened correctly and display error if not
    %no values will be assigned as there is an error
    fprintf(2, '%s%s\n' , 'Error opening file ',fileName)
else
    line = fgetl(fid); %get first line from file
    i = 1; %variable for keeping track of row number
    while ischar(line) %check line contains characters
        line = split(line); %splits line by spaces
        number = line(2:end); %adds numbers to an array
        number = str2double(number); %converts from string to numbers
        colourNames{i, 1} = char(line(1)); %add colour name into cell array
        for j = 1:3
            colourValues(i, j) = number(j); %adds colour values to array
        end
        i = i + 1;
        line = fgetl(fid); %get next line from file
    end
    fclose(fid); %close file
end
end

