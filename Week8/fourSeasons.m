%% 8.28
% an ordinal categorical array storing the four seasons
function ans = fourSeasons()

    valueset = {'Spring', 'Summer', 'Fall', 'Winter'};
    
    ans = categorical(valueset,valueset,'Ordinal',true);

end