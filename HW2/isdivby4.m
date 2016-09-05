%% 3.28
% returns whether a number is evenly divisible by 4
function ans = isdivby4(inputNumber)

    ans =  mod(inputNumber, 4) == 0;

end