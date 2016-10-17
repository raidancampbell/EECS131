%% 8.11
% rac158
function student = createStudentCellArray(name, id, gpa)

    if ~exist('name', 'var')
        name = 'sir billington';
    end
    if ~exist('id', 'var')
        id = 9001;
    end
    if ~exist('gpa', 'var')
        gpa = 4.01;
    end
    
    student = {'name', 'id', 'gpa'; name, id, gpa};
    disp(student);
end
