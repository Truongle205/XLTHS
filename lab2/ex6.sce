n = -1:3;
x1 = [0, 0, 1, 3, -2]; 
x2 = [0, 1, 2, 3, 0];


y = x1 + x2;

clf();

subplot(3, 1, 1);
plot2d3("gnn", n, x1);
plot(n, x1, "r.");
xtitle("x1(n)", "n", "value");
xgrid();

subplot(3, 1, 2);
plot2d3("gnn", n, x2);
plot(n, x2, "g.");
xtitle("x2(n)", "n", "value");
xgrid();

subplot(3, 1, 3);
plot2d3("gnn", n, y);
plot(n, y, "b.");
xtitle("y(n) = x1(n) + x2(n)", "n", "value");
xgrid();

