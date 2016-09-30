%% 6.19
% prompt for three x,y coordinate pairs
% calculate the area of a triangle given three coordinate pairs
function triangle()

    x1 = input('x1: ');
    y1 = input('y1: ');
    
    x2 = input('x2: ');
    y2 = input('y2: ');

    x3 = input('x3: ');
    y3 = input('y3: ');
        
    area = getArea(x1,y1,x2,y2,x3,y3);
    
    disp(['The area of the triangle is: ' num2str(area)]);
    
end

function area = getArea(x1,y1,x2,y2,x3,y3)
    d1 = distanceBetween(x1,y1,x2,y2);
    d2 = distanceBetween(x2,y2,x3,y3);
    d3 = distanceBetween(x3,y3,x1,y1);
    s = sum([d1,d2,d3]) / 2;
    area = sqrt(s * (s-d1) * (s-d2) * (s-d3));

end

function distance = distanceBetween(x1,y1,x2,y2)

    distance = sqrt((x1-x2)^2 + (y1-y2)^2);

end
