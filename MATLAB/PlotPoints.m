function PlotPoints(points,curve)
%Plots the points and curve given
    labels = {};
    for n=1:length(points)
        labels{end+1} = strcat('P',int2str(n));
    end

    figure();
    plot(curve(:,1),curve(:,2));
    hold on
    plot(points(:,1),points(:,2), 'o--');
    text(points(:,1),points(:,2), labels, 'VerticalAlignment','top','HorizontalAlignment','left');
end
