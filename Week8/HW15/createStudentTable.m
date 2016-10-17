%% 8.29 rac158
% represent data in a table
function my_table = createStudentTable(studentStructArray)

    if ~exist('studentStructArray', 'var')
        studentStructArray(1).name = {'sir billington'};
        studentStructArray(1).id = 1;
        studentStructArray(1).major = {'Security Consultant'};
        studentStructArray(2).name = {'madame pompadour'};
        studentStructArray(2).id = 2;
        studentStructArray(2).major = {'Feminine Dance Theory'};
        studentStructArray(3).name = {'kimbo slice'};
        studentStructArray(3).id = 3;
        studentStructArray(3).major= {'Colloquial Rap History'};
    end
    
    my_table = table;
    my_table.Name = [studentStructArray(:).name]';
    my_table.ID = [studentStructArray(:).id]';
    my_table.Major = [studentStructArray(:).major]';

end
