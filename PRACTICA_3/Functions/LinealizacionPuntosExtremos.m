function [m,b] = LinealizacionPuntosExtremos(X,Y)
    x1 = X(1);
    y1 = Y(1);

    x2 = X(length(X));
    y2 = Y(length(Y));


    m = (y2 - y1)/(x2 - x1);
    b = m.*x1 + y1;
end