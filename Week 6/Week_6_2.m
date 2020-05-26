% More Practice 
% Code to call your function
admit = eligible(96,89)
admit = eligible(88,99)
admit = eligible(92,91)

% Function
function admit = eligible(v,q)
    a = (v+q)/2;
    if a>=92 && v>88 && q>88
        admit = true;
    else 
        admit = false;
    end
end