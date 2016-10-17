%% 7.2 rac158
% pokes the user until they give a nonzero-length string
function theString = getstr()

    theString = '';
    while (length(theString) == 0)
        
%         note that `input` trims whitespace before giving the result,
%         so a single space still has length(0)
        theString = input('please enter a non-empty string: ', 's');
    
    end
    
end
