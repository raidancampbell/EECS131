%% 8.29
% represent data in a table
function ans = createStudentTable(studentStructArray)

    if ~exist('studentStructArray', 'var')
        studentStructArray(1).name = {'sir billington'};
        studentStructArray(1).id = 0001;
        studentStructArray(1).gpa = 4.001;
        studentStructArray(2).name = {'madame pompadour'};
        studentStructArray(2).id = 0002;
        studentStructArray(2).gpa = 3.002;
        studentStructArray(3).name = {'kimbo slice'};
        studentStructArray(3).id = 0003;
        studentStructArray(3).gpa= 2.003;
    end
    
    ans = table;
    ans.Name = [studentStructArray(:).name]';
    ans.ID = [studentStructArray(:).id]';
    ans.GPA = [studentStructArray(:).gpa]';

end