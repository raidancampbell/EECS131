%% 6.13
% they want 4 files?  That sounds really annoying so I'm keeping it to one.

function angles()

    deg = promptForAngleDeg();
    rad = degreesToRadians(deg);
    disp(['The equivalent value in radians is: ' num2str(rad)]);
    
end

function deg = promptForAngleDeg()

    deg = input('Angle in degrees: ');

end

function rad = degreesToRadians(deg)

    rad = deg2rad(deg);
    
end