% Lesson 5 Wrap up 
% Code to call your function
valid = valid_date(2018,4,1)
valid = valid_date(2018,4,31)

% Function
function valid = valid_date(year,month,day)  
if isscalar(year)  && year  > 0 && fix(year)  == year  && ...
   isscalar(month) && month > 0 && fix(month) == month && month <= 12 && ...
   isscalar(day)   && day   > 0 && fix(day)   == day
    m = month;
    if (m==1 || m==3 || m==5 || m==7 || m==8 || m==10 || m==12)      
              valid = (day>=1 && day<=31); 
    elseif (m==4 || m==6 || m==9 || m==11)
              valid = (day>=1 && day<31);
    elseif m==2 && (~rem(year,4))
        if ~rem(year,100) && ~rem(year,400)
            valid = (day>=1 && day<=29);
        elseif ~rem(year,100)
            valid = (day>=1 && day<29);
        else
            valid = (day>=1 && day<=29);
        end
    elseif m==2
        valid = (day>=1 && day<29)
    else
        valid = false;                
    end
else
    valid = false;
end
end