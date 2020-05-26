% Practice for loops
% Code to call your function
summa = halfsum([1 2 3; 4 5 6; 7 8 9])

% Function
function summa = halfsum(M)
summa = 0;
for i = 1:size(M,1)
    for j = 1:size(M,2)
        if i<=j
          summa = summa+M(i,j);
        else
            continue;
        end
    end
end
end