//Q. Check the recursion relation:
// (n+1)P_n+1(x) + nP_n-1(x) = (2n+1)xP_n(x)

clc;funcprot(0);
n=8; //defines n
//n=input("Enter value of n: "); //we could also take n as an input
for x =-1:0.01:1;
    p=(n+1)*legendre(n+1,0,x) + n*legendre(n-1,0,x); //the LHS
    q=((2*n)+1)*x*legendre(n,0,x); //the RHS
    if p==q then 
//        disp("the first recursion relation is satisfied")
    elseif abs(p-q)<0.000001 then
//            disp("the first recursion relation is satisfied")
        else
            disp("the first recursion relation fails by "+string(p-q));
    end
end
