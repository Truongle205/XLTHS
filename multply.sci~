function [yn, yorigin] = multi(x1, x1origin, x2, x2origin)
    n1 = (1:length(x1)) - x1origin; 
    n2 = (1:length(x2)) - x2origin;

    nmin = min(min(n1), min(n2));
    nmax = max(max(n1), max(n2));

    y1 = zeros(1, nmax - nmin + 1);
    y2 = zeros(1, nmax - nmin + 1);

    y1(n1 - nmin + 1) = x1;
    y2(n2 - nmin + 1) = x2;

    yn = y1 .* y2;
    yorigin = -nmin + 1;
    
    ny = (1:length(yn)) + nmin - 1;
    clf();
    subplot(3, 1, 1);
    plot2d3("gnn", n1, x1);
    plot(n1, x1, "r.");
    xtitle("x1(n)", "n", "value");
    xgrid();

    subplot(3, 1, 2);
    plot2d3("gnn", n2, x2);
    plot(n2, x2, "g.");
    xtitle("x2(n)", "n", "value");
    xgrid();

    subplot(3, 1, 3);
    plot2d3("gnn", ny, yn);
    plot(ny, yn, "b.");
    xtitle("y(n) = x1(n) * x2(n)", "n", "value");
    xgrid();
endfunction
