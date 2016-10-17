%% 5.22 rac158
% continually query the user for a keyword.
% this is riveting.

while ~(iskeyword(input('Enter a MATLAB keyword: ', 's')))
    
    fprintf(2,'Not a keyword. ');  % stderr so hard

end

disp('Keyword accepted.');
