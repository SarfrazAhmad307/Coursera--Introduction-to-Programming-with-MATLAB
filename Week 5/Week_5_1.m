% Minimum and Maximum
% Code to call your function
[mmr, mmm] = minimax([1:4;5:8;9:12])

% Function
function [mmr,mmm] = minimax(M)
    B= max(M');
    C= min(M');
    mmr= B-C;
    B= max(M(:));
    C= min(M(:));
    mmm= B-C;
end