%% 6.19 functions.  using multiple files like this is so silly.

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
