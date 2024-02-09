//Q. Check the recursion relation:
// xJ_n+1(x) = 2nJ_n(x) - xJ_n-1(x)

clc;funcprot(0);
n=1; //defines n
//n=input("Enter value of n: "); //we could also take n as an input
for x =0:0.01:10;
    p=x*besselj(n+1,x); //the LHS
    q=2*n*besselj(n,x) - x*besselj(n-1,x); //the RHS
    if p==q then 
//        disp("the first recursion relation is satisfied")
    elseif abs(p-q)<0.000001 then
//            disp("the first recursion relation is satisfied")
        else
            disp("the first recursion relation fails by "+string(p-q));
    end
end
