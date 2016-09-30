%% 5.22
function waitForKeyword()

    wordToCheck = input('Enter a MATLAB keyword: ', 's');

    while ~(iskeyword(wordToCheck))

        fprintf(2,'Not a keyword. ');       
        wordToCheck = input('Enter a MATLAB keyword: ', 's');

    end

    disp([wordToCheck ' is a keyword.']);

end