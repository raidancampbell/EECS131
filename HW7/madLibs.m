%% 8.5
% 

function ans = madLibs()

    names = {'Harry', 'Xavier', 'Sue'};
    verbs = {'loves', 'eats'};
    nouns = {'baseballs', 'rocks', 'sushi'};
    
    ans = [names(randi(numel(names))) verbs(randi(numel(verbs))) nouns(randi(numel(nouns)))];
    
end