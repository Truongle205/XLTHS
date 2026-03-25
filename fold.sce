function [yn, yorigin] = fold(xn, xorigin)
    //xorigin = xorigin;
    yn = xn($:-1:1);
    yorigin = length(xn) - xorigin + 1;

    nx = (1:length(xn)) - xorigin;
    ny = (1:length(xn)) - yorigin - 1 ;
    //disp("yorigin = ",yorigin)
    clf();
    subplot(2, 1, 1)
    plot2d3(nx, xn)
    plot(nx, xn, "r.")
    xtitle("x(n)", "n", "value");
    xgrid();
    subplot(2, 1, 2)
    plot2d3(ny, yn)
    plot(ny, yn, "g.")
    xtitle("y(n) = x(-n)", "n", "value");
    xgrid();
    //disp("yn = ",yn)
endfunction

funcprot(0);
