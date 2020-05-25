% Matrix Construction
% Code to call your function
T = trio(2,4)

% Function
function M = trio(n,m)
    A = ones(n,m)
    B = 1 + ones(n,m)
    C = 2 + ones(n,m)
    M = [A ; B ; C]
end
