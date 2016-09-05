function EECS131_HW1()

    disp(['1.16, inputs 1,2,3: ', num2str(problem1(1,2,3))]);
    disp(['1.19, inputs 0,11: ', num2str(problem2(0,11))]);
    disp(['1.19, inputs 0,0: ', num2str(problem2(0,0))]);
    disp(['1.19, inputs 6,11: ', num2str(problem2(6,11))]);
    disp(['1.19, inputs 6,0: ', num2str(problem2(6,0))]);
    disp(problem3());
    disp(problem4());
    disp(problem5());
    disp(problem6());
    disp(problem7());
end

%% 1.16
%Combines resistance of three resistors
function resistance = problem1(r1, r2, r3)

invertedSum = (1/r1) + (1/r2) + (1/r3);

resistance = 1 / invertedSum;
end

%% 1.19
% x > 5 xor y < 10
function retvar = problem2(x, y)
    retvar = xor(x > 5, y < 10);
end

%% 1.26
% For what range of values is round equivalent to the function floor
% For what range of values is round equivalent to the function ceil
function retvar = problem3()
    retvar = ['Values modulo-1 that are 0-0.49[99...] have floor(val) equivalent to round(val)' char(10)  ...
    'Values modulo-1 that are 0.5-0.9[99...] have ceil(val) equivalent to round(val)'];
end

%% 2.8
% 
function retvar = problem4()

    linspaceLine1 = linspace(-5, -1, 5);
    linspaceLine2 = linspace(5,9,3);
    linspaceLine3 = linspace(8,4,3);
    colonLine1 = -5:-1;
    colonLine2 = 5:2:9; % grumble grumble, stupid start:step:stop syntax...
    colonLine3 = 8:-2:4;
    retvar = [linspaceLine1 linspaceLine2 linspaceLine3; colonLine1 colonLine2 colonLine3];
end

%% 2.11
% using colon and transpose, make a column vector with values -1 to 1 in steps of 0.5
function retvar = problem5()

    retvar = (-1:.5:1).';
%   if I were a kinder soul to the reader, the solution would be `transpose(-1:.5:1)`

end

%% 2.21
% 
function retvar = problem6()

    matrix = rand(2,3);
    flip(matrix);
    fliplr(matrix);
    flipud(matrix);
    rot90(matrix);
%   how many ways can it be reshaped?
%   2x3 = 6 elements
%   1x6 (1)
%   2x3 (2)
%   3x2 (3)
%   6x1 (4)
    retvar = 4;
    
end

%% 2.27
% 
function retvar = problem7()

    x = linspace(-pi, pi, 20);
    y = sin(x);
    retvar = y;

end

