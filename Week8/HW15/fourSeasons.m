%% 8.28 rac158
% an ordinal categorical array storing the four seasons
function seasons = fourSeasons()

    valueset = {'Spring', 'Summer', 'Fall', 'Winter'};
    
    seasons = categorical(valueset,valueset,'Ordinal',true);

end
