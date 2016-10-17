%% 9.12 rac158
% plot from file
% reads coordinates in the form `x 1 y 10` from a file, newline delimited

filename = 'xypts.dat';

[fileID, msg] = fopen(filename, 'r');
data = [];
if fileID == -1  % error is msg
    fprintf(2, 'the following error occurred while opening the file: %s\n', msg);
else  % success 
%       yeah, this isn't a `for` loop to read the file.  I'm okay with that.
    while ~feof(fileID) % while not EOF
        line = fgetl(fileID);  % read a line
        if isempty(line)
            break;  % handle the trailing newline most editors like to add.
        end
        splitline = strsplit(line);  % man, the syntax really won't let me inline this?
        data = [data; splitline(2) splitline(4)];
    end

    if fclose(fileID) ~= 0  % an error occurred on closing the file
        fprintf(2, 'an error ocurred while closing the file\n');
    else
        fprintf('file successfully closed\n');
    end
%         I. Hate. Column. Major.
    for i = 1:length(data)
       plot(str2double(data(i)), str2double(data((length(data) + i))), 'ro');
       hold on; % don't show it until we're ready
    end
    hold off;
    
end
