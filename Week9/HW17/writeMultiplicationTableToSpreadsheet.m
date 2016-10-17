%% 9.4 rac158
% write a multiplication table to a spreadsheet
% luckily 5.14 from HW4 already had us make a multiplication table

function writeMultiplicationTableToSpreadsheet()
    generateMultiplicationTable()
    xlswrite('output.xls', generateMultiplicationTable());

end


%% 5.16
% prints out a pretty table of numbers
function multiplication_table = generateMultiplicationTable()
    multiplication_table = '';
    for i = 1:1:5
       for j = 1:1:i
           if j ~= 1
            multiplication_table = [multiplication_table ' ' num2str(i*j)];
           else
            multiplication_table = [multiplication_table num2str(i*j)];
           end
       end
       multiplication_table = [multiplication_table char(10)];  % newline!
    end
end
