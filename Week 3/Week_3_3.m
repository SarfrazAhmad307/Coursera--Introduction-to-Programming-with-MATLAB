% Matrix Arithmetic
A = [1:5; 6:10; 11:15; 16:20];
B = size(A)
Row_Vector(:,1:B(1,1)) = 1
Column_Vector(1:B(1,2),:) = 1
[size(Row_Vector),size(A)]
Temp = Row_Vector*A
[size(Temp),size(Column_Vector)]
result = Temp*Column_Vector