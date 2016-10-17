%% 5.5 rac158
% summation. woo.
function ret_var = sumsteps2(n)
    sum = 0;
    for i = 1:2:n
        sum = sum + i;
    end
    ret_var = sum;
end