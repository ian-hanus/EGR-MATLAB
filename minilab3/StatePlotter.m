function StatePlotter(Time, States)

StateCount = size(States, 2);

NumCols = ceil(sqrt(StateCount));
NumRows = ceil(StateCount / NumCols);
clf;
for PlotNumber = 1:StateCount
        subplot(NumRows, NumCols, PlotNumber);
        plot(Time, States(:,PlotNumber), 'ko:');
        xlabel('Time');
        ylabel(sprintf('y_{%0.0f}(t)', PlotNumber))
        title(sprintf('y_{%0.0f}(t) vs. Time', PlotNumber));
end