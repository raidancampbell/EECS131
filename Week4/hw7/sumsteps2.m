%% 5.5
% summation.
function ans = sumsteps2(n)
    sum = 0;
    for i = 1:2:n
        sum = sum + i;
    end
%     fine, matlab, I'll preserve your silly `ans` variable
    ans = sum;
end