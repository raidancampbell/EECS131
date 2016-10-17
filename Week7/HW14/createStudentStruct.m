%% 8.12 rac158

function student = createStudentStruct(name, id, gpa)

    if ~exist('name', 'var')
        name = 'sir billington';
    end
    if ~exist('id', 'var')
        id = 9001;
    end
    if ~exist('gpa', 'var')
        gpa = 4.01;
    end
    
    student = struct('name', name, 'id', id, 'gpa', gpa);
    disp(student);
end
