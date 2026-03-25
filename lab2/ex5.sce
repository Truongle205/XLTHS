n = -1:1;
x = [1, 3, -2];

x_fold = x($:-1:1);

xe = 0.5 * (x + x_fold);
xo = 0.5 * (x - x_fold);

clf();

subplot(3, 1, 1);
plot2d3("gnn", n, x);
plot(n, x, "r.");
xtitle("x(n)", "n", "value");

subplot(3, 1, 2);
plot2d3("gnn", n, xe);
plot(n, xe, "g.");
xtitle("xe(n)", "n", "value");

subplot(3, 1, 3);
plot2d3("gnn", n, xo);
plot(n, xo, "b.");
xtitle("xo(n)", "n", "value");
