%%  7.22
% replaces double spaces with single spaces
% someone who never wrote on a typewriter must have written this question

function despaced = rid_multiple_blanks(inputStr)

    despaced = regexprep(inputStr, ' +', ' ');

end
