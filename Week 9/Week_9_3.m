% Saddle Points
% Code to call your function

% create an interesting surface
[X,Y] = meshgrid(-15:0.5:10,-10:0.5:10);
Z = (X.^2-Y.^2)';
% find saddle points
indices = saddle(Z)
% plot surface
surf(Z);
hold on
% mark saddle points with red dots in the same figure
for ii = 1:size(indices,1)
    h = scatter3(indices(ii,2),indices(ii,1),Z(indices(ii,1),indices(ii,2)),'red','filled');
    h.SizeData = 120;
end
% adjust viewpoint
view(-115,14);
hold off

% Function
function indices=saddle(M)
    [m,n]=size(M);    
    indices=[];            
    for i=1:m
        for j=1:n
            if (M(i,j)==max(M(i,:))&& M(i,j)==min(M(:,j)))
                indices=[indices; i,j];     
            end
        end
    end     
end