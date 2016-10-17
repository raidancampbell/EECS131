%% 8.3 rac158
% mucking around with vectors/cell arrays


%     I have no idea how to store "the logical expression 'a' < 'c'"
%     so I stored a lambda of it, which seems like that may be what you want
%     maybe you were looking for the string comparison `'a' < 'b'`
%     but that would store the result, not the expression.
cellArray = {'xyz', 33.3, 2:6, @(a,b) a<b};

cellArray = cellArray';  % transpose

cellArray = reshape(cellArray, 2, 2);  % reshape to 2x2

celldisp(cellArray);  % display
