%% 4.18
% basic confirmation dialog with a switch statement.
function confirmation()

    letter = input('Enter your answer: ', 's');
    
    switch letter
        case 'y' || 'Y'
            disp('OK, continuing');
        case 'n' || 'N' || 'Error'  
            % Yes, matlab, I realize I used the string `Error`.  
            % I agree it's dumb, stop warning me about it.
            disp('OK, halting');
        otherwise
            disp('OK, halting');
    end

end