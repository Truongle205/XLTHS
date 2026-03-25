function [yn, yorigin] = convolution(xn, xorigin, hn, horigin)
    yn = conv(xn, hn);
    yorigin = xorigin + horigin - 1;

    ny = (1:length(yn)) - yorigin;

    nx = (1:length(xn)) - xorigin;
    nh = (1:length(hn)) - horigin;

    clf();

    subplot(3, 1, 1);
    plot2d3("gnn", nx, xn);
    plot(nx, xn, "r.");
    xtitle("x(n)", "n", "value");
    xgrid();

    subplot(3, 1, 2);
    plot2d3("gnn", nh, hn);
    plot(nh, hn, "g.");
    xtitle("h(n)", "n", "value");
    xgrid();

    subplot(3, 1, 3);
    plot2d3("gnn", ny, yn);
    plot(ny, yn, "b.");
    xtitle("y(n) = x(n) * h(n)", "n", "value");
    xgrid();

    //disp("yorigin = ", yorigin);
    //disp("yn = ", yn);
endfunction
