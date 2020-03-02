function [m,b] = LinealizacionMinimosCuadrados(X,Y)
    medidas = length(X);
    m = (medidas .* sum(X.*Y) - sum(X) .* sum(Y))/(medidas .* sum(X .^ 2) - sum(X) .^ 2);
    b = sum(Y)./medidas - m .* sum(X)./medidas;
end

