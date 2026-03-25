function [yn, yorigin] = advance (xn, xorigin, k)
    //xorigin = xorigin;
    yn = [xn, zeros(1, k)];
    yorigin = xorigin - k;

    nx = (1:length(xn)) - xorigin;
    ny = (1:length(yn)) - yorigin - k - k;

    clf();
    subplot(2, 1, 1)
    plot2d3(nx, xn)
    plot(nx, xn, "r.")
    xtitle("x(n)", "n", "value")
    xgrid();
    subplot(2, 1, 2)
    plot2d3(ny, yn)
    plot(ny, yn, "g.")
    xtitle("y(n) = x(n+k)", "n", "value")
    xgrid();
   // disp("yorigin = ",yorigin)
   // disp("yn = ",yn)
endfunction

funcprot(0);
