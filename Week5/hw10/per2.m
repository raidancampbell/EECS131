%%  6.22

function ans = per2(toAdd)

    persistent sum;
    if isempty(sum)
        sum = 0;
    end
    sum = sum + toAdd;
    ans = sum

end