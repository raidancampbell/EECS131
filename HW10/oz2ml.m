%% 10.17
% anonymous function to convert from fluid ounces to milliliters
% conversion rate is 1oz -> 29.57 mL

function ans = oz2ml(ounces)

    if ~exist('ounces', 'var')
        ounces = 1.3;
    end

    fun = @(x) x * 29.57;
    
    ans = fun(ounces);

end