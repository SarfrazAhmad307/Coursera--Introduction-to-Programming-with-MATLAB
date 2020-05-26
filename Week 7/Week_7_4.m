% Lesson 6 Wrap up
% Code to call your function
[summa, index] = max_sum([1 2 3 4 5 4 3 2 1],3)

% Function
function [summa, index] = max_sum(v,n)
if isscalar(n) && n>0 && n==fix(n)
    if n > length(v)
        summa = 0;
        index = -1;
    else
        i = 0;
        while i<=length(v)-n
            s=0;
            for j = 1:n
                s = s+v(i+1);
                i = i+1;
            end    
            i = i-n+1;
            k(i) = s;
        end
        [summa,index] = max(k);
    end
else
    Error("Enter Positive n !!")
end
end