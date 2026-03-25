n=-5:5;
m=n.*(n>=0);
clf();
plot2d3("gnn", n, m);
plot(n, m, "r.");
xtitle("ur(n)", "n", "value");
xgrid();
