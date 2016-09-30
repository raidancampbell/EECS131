%% 7.26
% attempts to decrypt from a basic ROT cypher

function ans = unknownRotDecrypt(inputString)
    if ~exist('inputString', 'var')
        inputString = 'Jmkyvih$mx$syx$}ixC'
    end
    for i = -50:50
        disp([num2str(i) ': ' char(double(inputString) + i)])
    end
% answer is:
% -4: Figured it out yet?
end