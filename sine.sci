//Q:Plot sin(x).

clc; //clears all input/output from the console
x=-2*%pi:0.1:2*%pi; //Define an array/list of points. 
          //The above definition is in the format of "i:s:f",
          //where i=initial value; s=step size; f=final value.
          //We may need to define the list by hand sometimes.
y=sin(x); //Define the desired function and evaluate them at the previously             defined points.
plot(x,y); //Plot the points in a 2d plane.

//Note:
    //The scilab automatically extrapolates/connects the obtained points 
    //in the 2d plot. Keep this in mind in case you are shocked to see a
    //non-smooth plot. If we are still not convinced, try changing 's' to 
    //a larger value in line-2.
