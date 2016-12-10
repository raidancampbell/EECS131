%% 10.3
% resistor network calculation for n-many resistors

function ans = Req(varargin)
    
    invertedSum = 0;
    for k = 1:length(varargin)
        invertedSum = invertedSum + (varargin{k} ^ -1);
    end
    
    ans = invertedSum ^ -1;
    
end