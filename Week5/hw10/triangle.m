%% 6.19 rac158
% prompt for three x,y coordinate pairs
% calculate the area of a triangle given three coordinate pairs

x1 = input('x1: ');
y1 = input('y1: ');

x2 = input('x2: ');
y2 = input('y2: ');

x3 = input('x3: ');
y3 = input('y3: ');

area = getArea(x1,y1,x2,y2,x3,y3);

disp(['The area of the triangle is: ' num2str(area)]);
