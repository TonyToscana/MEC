function CurvaBezier(puntos,inc)
%Given a set of points, calculates the number of points and executes the
%correct function, or throws an error if the number of points is not
%supported
    switch length(puntos)
        case 3
            PlotPoints(puntos, CurvaBezier3Puntos(puntos, inc));
        case 4
            PlotPoints(puntos, CurvaBezier4Puntos(puntos, inc));
        otherwise
            msg = strcat('Las curvas de bezier de más de 4 puntos no están soportadas');
            error(msg);
    end
end

