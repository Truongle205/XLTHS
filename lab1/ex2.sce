t=linspace(0, 0.1, 1000);
xa=3*sin(100*%pi*t);

n=0:(5*300/50);
xn=3*sin(2*%pi*n*50/300);

delta=0.1;
xq=floor(xn/delta)*delta

clf();

subplot(3,1,1);
plot(t, xa, 'r');
xtitle("xa(t)", "t (s)", "value");

subplot(3,1,2);
plot2d3('gnn', n, xn); 
plot(n, xn, 'g.');
xtitle("x(n)", "n", "value");


subplot(3,1,3);
plot2d3('gnn', n, xq);
plot(n, xq, 'b.');
xtitle("xq(n)", "n", "value");
