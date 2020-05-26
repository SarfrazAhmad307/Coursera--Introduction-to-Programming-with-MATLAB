% Logical Array Practice
% Code to call your function
numfreeze = freezing([45 21 32 31 51 12])

% Function
function numfreeze = freezing(A)
A(A<32) = 0;
numfreeze = length(find(A==0));
end
