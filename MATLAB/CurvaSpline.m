function CurvaSpline(puntos,inc)
%Given a set of points, calculates the number of points and executes the
%correct function, or throws an error if the number of points is not
%supported
    switch length(puntos)
        case 3
            PlotPoints(puntos, SplineCubicaNatural3Puntos(puntos, inc));
        case 4
            PlotPoints(puntos, SplineCubicaNatural4Puntos(puntos, inc));
        otherwise
            msg = strcat('Las curvas Spline de m�s de 4 puntos no est�n soportadas');
            error(msg);
    end
end

