%% 6.15 rac158
% convert cartesian to spherical coordinates, then print them

function printspherical(x,y,z)

    [radius, inclination, azimuth] = convert2sphere(x,y,z);
    
    disp(['The radius is ' num2str(radius)]);
    disp(['The inclination is ' num2str(inclination)]);
    disp(['The azimuth is ' num2str(azimuth)]);

    
end


function [radius, inclination, azimuth] = convert2sphere(x,y,z)

%    yay reading the API
    [azimuth, inclination, radius] = cart2sph(x,y,z);
    
end
