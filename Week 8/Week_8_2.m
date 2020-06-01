% Sparse Matrix
% Code to call your function
matrix = sparse2matrix({[2 3], 0, [1 2 3], [2 2 -3]})

% Function
function matrix = sparse2matrix(cellvec)
    s = cellvec{1}
    default = cellvec{2}
    for i = 1:s(1)
        for j = 1:s(2)
            matrix(i,j) = default;           
        end
    end         
    for i=3:length(cellvec)
        j = cellvec{i}(1);
        k = cellvec{i}(2);
        matrix(j,k) = cellvec{i}(3);
    end 
end