//Gauss Elimination method
clc; clear;
A = [2 3 4 13 ; 3 4 1 9 ; 1 5 4 14];
disp(A)
A11 = A(1,1)
A(1,:) = A (1,:)/A11
disp(A)
A21 =A(2,1) 
A(2,:) = A(2,:) - A21*A(1,:)
disp(A)
A31 =A(3,1) 
A(3,:) = A(3,:) - A31*A(1,:)
disp(A)
A22 = A(2,2)
A(2,:) = A (2,:)/A22
disp(A)
A32 =A(3,2)
A(3,:) = A(3,:) - A32*A(2,:)
disp(A)
z = A(3,4)/A(3,3)
disp(z)
y = A(2,4)-A(2,3)*z
disp(y)
x = A(1,4)-A(1,3)*z- A(1,2)*y
disp(x)
