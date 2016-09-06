%% 8.12

function ans = createStudentStruct(name, id, gpa)

    if ~exist('name', 'var')
        name = 'sir billington';
    end
    if ~exist('id', 'var')
        id = 9001;
    end
    if ~exist('gpa', 'var')
        gpa = 4.01;
    end
    
    ans = struct('name', name, 'id', id, 'gpa', gpa);
    disp(ans);
end