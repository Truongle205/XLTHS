function [yn, yorigin] = delay(xn, xorigin, k)
    yn = [zeros(1, k), xn];
    yorigin = xorigin + k;

    nx = (1:length(xn)) - xorigin;
    ny = (1:length(yn)) - xorigin;

    clf();
    subplot(2, 1, 1)
    plot2d3(nx, xn)
    plot(nx, xn, "r.")
    xtitle("x(n)", "n", "value");
    xgrid();
    subplot(2, 1, 2)
    plot2d3(ny, yn)
    plot(ny, yn, "g.")
    xtitle("y(n) = x(n-k)", "n", "value");
    xgrid();
   // disp("yorigin = ",yorigin)
   // disp("yn = ",yn)
endfunction
