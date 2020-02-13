function PlotPoints(points,curve)
%Plots the points and curve given
    %Defines the colors to be used for the plots
    blueish = [0 0.4470 0.7410];
    orangeish = [0.8500 0.3250 0.0980];
    
    labels = {};
    for n=1:length(points)
        labels{end+1} = strcat('P',int2str(n));
    end

    plot(points(:,1),points(:,2), 'o--', 'Color', orangeish);
    text(points(:,1),points(:,2), labels, 'VerticalAlignment','top','HorizontalAlignment','left');
    hold on
    plot(curve(:,1),curve(:,2), 'Color', blueish);
end
