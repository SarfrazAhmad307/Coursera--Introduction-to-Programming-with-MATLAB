% Corner Case
% Code to call your function
A = randi(100,4,5)
[top_left, top_right, bottom_left, bottom_right] = corners(A)
B = [1; 2]
[top_left, top_right, bottom_left, bottom_right] = corners(B)

% Function
function [a b c d] = corners(M)
    a = M(1,1);
    b = M(1,end);
    c = M(end,1);
    d = M(end,end);
end
