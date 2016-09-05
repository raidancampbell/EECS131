%% 4.2
% prints the next hour in 12-hour time

function ans = nexthour(inputHour)

    ans = ternary(inputHour + 1 > 12, mod(inputHour + 1, 12), inputHour + 1);

end

%% you've got to be kidding me, I don't get ternaries OR the `++` operator?
% grumble grumble grumble
function ans = ternary(condition, onTrue, onFalse)

    if condition
        ans = onTrue;
    else
        ans = onFalse;
    end

end