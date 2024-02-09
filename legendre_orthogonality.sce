//Q. Illustrate the orthogonality of Legendre polynomials:
// int_limit(-1,1) Pn(x) Pm(x) dx = 2/2n+1 d_nm

clc; //clears console
n=input("Enter the degree of 1st polynomial= "); //degree of 1st legendre
m=input("Enter the degree of 2nd polynomial= "); //degree of 2nd legendre
val=integrate('legendre(n,0,x)*legendre(m,0,x)', 'x',-1,1); //integrates their product
disp(val); //tests the orthogonality condition
