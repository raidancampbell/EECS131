%% calculates the length of the third side from two given sides and an angle of a triangle
% input: 
% a: side a of the triangle
% b: side b of the triangle
% angle: the angle between sides a and b
% output:
% length: the length of the third side of the triangle
function length = thirdSide()
    firstSide = input('Enter the first side: ');
    
    secondSide = input('Enter the second side: ');
    
    angle = input('Enter the angle between them: ');
    
    disp(['The third side is ' num2str(calculateThirdSide(firstSide, secondSide, angle))]);
end

% page 113
function ans = calculateThirdSide(b, c, angle)

% a^2 = b^2 + c^2 - 2bc * cos(alpha)
    ans = sqrt( b^2 + c^2 - (2 * b * c * cos(deg2rad(angle))));

end