%% 10.13
% calculate the volume of a cone with a nested function
% fun fact: the book gives the wrong formula for the volume of a cone
% the book says the formula is A*H.  That is the volume of a cylinder.
% The actual formula is A*H/3.
% To stay consistant, I'll use the formula the book gives.
function ans = coneVolume(radius, height)

    function A = calculateA(radius)
       
        A = pi * radius^2;
        
    end

    area = calculateA(radius);
    
    ans = area * height;

end