%% 9.26
% something something windchill

function t = generateWCFTable(outputFilename)

    t = table;
    c = {};
    speedStrings = {};
    tempStrings = {};

    for temp = -20:5:55
       for windspeed = 0:5:55
           c{(windspeed/5)+1, (temp/5)+5} = calculateWCF(temp, windspeed);
%           wcf = [wcf calculateWCF(temp, windspeed)];
       end
       if temp < 0
           tempStrings = [tempStrings {strcat('below', num2str(abs(temp)))}];
       else
           tempStrings = [tempStrings {strcat('deg', num2str(temp))}];
       end
    end
   for windspeed = 0:5:55
       speedStrings = [speedStrings, strcat('mph', num2str(windspeed))];
   end
    t = cell2table(c);
    
%     well that's dumb, the row and column names need to be syntactically valid var names
%     which means we can't follow the usual method of saying something is "5 degrees" or "-5 degrees"
    t.Properties.VariableNames = tempStrings;
    t.Properties.RowNames = speedStrings;
    
    if ~exist('outputFilename', 'var')
        outputFilename = 'windchill.txt';
    end
    
    writetable(t,outputFilename);
    
end

function ans = calculateWCF(temp, windspeed)

    ans = 35.7 + 0.6 * temp - 35.7*(windspeed^0.16) + 0.43*temp*(windspeed^0.16);

end