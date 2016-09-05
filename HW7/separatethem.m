%% 8.18
% given a struct with fields 'length' and 'width', return the fields as a vector
function [length, width] = separatethem(inputStruct)
    
    if ~exist('inputStruct', 'var')
        inputStruct = struct('length', 123, 'width', 456);
    end
    length = inputStruct.length;
    width = inputStruct.width;

end