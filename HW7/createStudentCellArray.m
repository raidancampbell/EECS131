%% 8.11
% 
function ans = createStudentCellArray(name, id, gpa)

    if ~exist('name', 'var')
        name = 'sir billington';
    end
    if ~exist('id', 'var')
        id = 9001;
    end
    if ~exist('gpa', 'var')
        gpa = 4.01;
    end
    
    ans = {'name', 'id', 'gpa'; name, id, gpa};
    disp(ans);
end