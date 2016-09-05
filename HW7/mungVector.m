%% 8.3
% mucking around with vectors/cell arrays

function mungVector()

%     I have no idea how to store "the logical expression 'a' < 'c'"
%     so I stored a lambda of it, which seems like that may be what you want
    cellArray = {'xyz', 33.3, 2:6, @(a,b) a<b}
    
    cellArray = transpose(cellArray)
    
    cellArray = reshape(cellArray, 2, 2)
    celldisp(cellArray);

end