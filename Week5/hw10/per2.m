%%  6.22 rac158
% persistant addition.  woo.
function ret_var = per2(toAdd)

    persistent sum;
    if isempty(sum)
        sum = 0;
    end
    sum = sum + toAdd;
    ret_var = sum

end
