%% 3.33, rac158
% converts inches of rain to inches of snow

function rain2snow()

    inRain = input('Enter the inches of rain: ');
    disp(['The equivalent inches in snow is: ' num2str(calculateRain2Snow(inRain))]);

end

function ans = calculateRain2Snow(inRain)

    ans = inRain * 6.5;

end
