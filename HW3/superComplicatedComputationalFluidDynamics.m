%% 4.13
% if a1 > a2, speed will increase. yay bernoulli.

function superComplicatedComputationalFluidDynamics()

    a1 = input('Enter the area of the first point in square feet: ');
    a2 = input('Enter the area of the second point in square feet: ');

    if a1 > 0 && a2 > 0
        if a1 > a2
            disp('The velocity will increase at the second point');
        elseif a1 == a2
            disp('The velocity will remain the same');
        else
            disp('The velocity will decrease at the second point');
        end
            
    else
         fprintf(2, 'inputs must be positive numbers');
    end
    
end

