//Gauss Seidel method
clc; clear;
A = [2 3 4 ; 3 4 1 ; 1 5 4];
b = [13; 9 ;14]
disp(A)
disp(b(1))
x10 =100; x20 = -5000; x30 = 2;

x = [x10; x20 ;x30]
B = A*x - b
disp(B)
while (abs(B(1)) > 0.00001 || abs(B(2)) > 0.00001 || abs(B(3)) > 0.00001 ) then
x1 = (1/A(1,1))*(b(1)- A(1,2)*x20 - A(1,3)*x30);
x2 = (1/A(2,2))*(b(2)- A(2,1)*x1 - A(2,3)*x30);
x3 = (1/A(3,3))*(b(3)- A(3,1)*x1 - A(3,2)*x2);
x = [x1;x2;x3]
B = A*x - b
x10 = x1; x20 = x2; x30 = x3;
disp("B = ", B)
end
disp("x = ", x)
