//Q:Matrix oprations.

clc; //Clears previous input/outputs from the console.
A=[1,2,3;
   4,5,6;
   7,8,9]; //Defines a 3x3 matrix.
B=[9,8,7;
   6,0,4;
   3,2,1]; //Defines another 3x3 matrix.
disp("The defined matrix A:",A); //Displays the full matrix A.
disp("The chosen element of A:",A(3,2)); //Displays a particular element of A.
disp("Addition of A to B:",A+B); //Displays A+B
disp("Subtraction of B from A:",A-B); //Displays A-B
disp("Multiplication of A & B:",A*B); //Displays A.B
disp("Transpose of A:",A.'); //Displays the Transpose of A
disp("Conjugate of B:",conj(B)); //Displays the complex conjugate of B
disp("Transpose-Conjugate of A:",A'); //Displays A-dagger
disp("Determinant of A:",det(A)); //Shows the determinant of A
disp("Trace of B:",trace(B)); //Shows the trace of B
disp("Inverse of B:",inv(B)); //Shows the Inverse of B
