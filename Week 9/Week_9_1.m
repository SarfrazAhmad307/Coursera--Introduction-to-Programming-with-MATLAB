% Excel File I/O
% Code to call your function
distance = get_distance('Seattle, WA','Miami, FL')

% Function
function distance = get_distance(a,b)
    [~,~,raw] = xlsread('Distances.xlsx');
   for i = 2 : size(raw,1)+1
       if i > size(raw,1)
           distance = -1;
           return
       end
       if strcmp(raw{i,1},a)
           break
       end
   end
   
   for j = 2 : size(raw,2)+1
       if j > size(raw,2)
           distance = -1;
           return
       end
       if strcmp(raw{1,j},b)
           distance = raw{i,j};
           break
       end
   end
end