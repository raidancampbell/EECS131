%% 5.16
% prints out a pretty table of numbers
function multiplicationTable()

    for i = 1:1:5
       for j = 1:1:i
          fprintf(1, '%d ', i*j);
       end
       fprintf(1, '\n');
    end

end