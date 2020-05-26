% Variable number of inputs 
% Code to call your function
too_young = under_age(18,18)
too_young = under_age(20)

% Function
function too_young = under_age(age,limit)
    if nargin < 2
        limit = 21;
    end
    if age<limit
        too_young = true;
    else
        too_young = false;
    end
end