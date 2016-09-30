%% 4.7
% given a and c of a right triangle, find b.  Now with 100% more error handling!

function b = findb(a,c)

% a^2 + b^2 = c^2
% c^2 - a^2 = b^2

    if a > 0 && c > 0

        b = sqrt(c^2 - a^2);

    else
        disp('Err: inputs must be positive numbers');
    end

end