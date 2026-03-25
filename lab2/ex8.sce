x = [1, -2, 3, 6];
n = -2:1;

clf();

subplot(3, 2, 1);
plot2d3("gnn", n, x);
plot(n, x, "b.");
xtitle("x(n)", "n", "value");
xgrid();

subplot(3, 2, 2);
x_fold = x($:-1:1);
n_fold = -n($:-1:1);
plot2d3("gnn", n_fold, x_fold);
plot(n_fold, x_fold, "g.");
xtitle("x(-n)", "n", "value");
xgrid();

subplot(3, 2, 3);
plot2d3("gnn", n, x);
plot(n, x, "b.");
xtitle("x(n)", "n", "value");
xgrid();

subplot(3, 2, 4);
plot2d3("gnn", n+3, x);
plot(n+3, x, "g.");
xtitle("x(n-3)", "n", "value");
xgrid();

subplot(3, 2, 5);
plot2d3("gnn", n, x);
plot(n, x, "b.");
xtitle("x(n)", "n", "value");
xgrid();

subplot(3, 2, 6);
plot2d3("gnn", n_fold-2, 2*x_fold);
plot(n_fold-2, 2*x_fold, "g.");
xtitle("2*x(-n-2)", "n", "value");
xgrid();
