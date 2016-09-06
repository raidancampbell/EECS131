%% 9.4
% write a multiplication table to a spreadsheet
% luckily 5.14 from HW4 already had us make a multiplication table

function writeMultiplicationTableToSpreadsheet()
    generateMultiplicationTable()
    xlswrite('output.xls', generateMultiplicationTable());

end


%% 5.16
% prints out a pretty table of numbers
function ans = generateMultiplicationTable()
    ans = '';
    for i = 1:1:5
       for j = 1:1:i
           if j ~= 1
            ans = [ans ' ' num2str(i*j)];
           else
            ans = [ans num2str(i*j)];
           end
       end
       ans = [ans char(10)];  % this is so cheating...
    end

end
