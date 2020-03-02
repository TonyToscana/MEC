X = 0:0.5:6;
Y = [12.0 9.5 7.0 5.2 4.0 3.1 2.7 2.0 1.5 1.0 0.5 0.2 0.1];

[m,b] = LinealizacionMinimosCuadrados(X, Y);
%[m,b] = LinealizacionPuntosExtremos(X, Y);

plot(X, Y);
hold on
plot(X,rectaCalibracion(X, m, b))



function Y = rectaCalibracion(X, m, b)
    Y = m .* X + b;
end