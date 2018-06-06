function SinSeriesChecker(NetID) % DO NOT CHANGE THIS LINE!
% SinSeriesChecker  Check SinSeries program
%   SinSeriesChecker(NetID) 
%     NetID: a string containing your NetID
%     Generates SinSeriesCheckerPlot.eps with graphs of
%     approximations and relative errors for four angles

if nargin==0
    error('Be sure to run this with SinSeriesChecker(''ID'')')
end

% Initialize terms
WhichPlot=0;
NTerms = 20;
%% Loop through four angles
for MyAngle = [pi/4 1.01*pi/2 9*pi/4 41.01*pi/2]
    % Calculate approximations and errors
    [Approximation, RError] = SinSeries(MyAngle, NTerms);
    % Make and label the approximation series plot
    WhichPlot = WhichPlot+1;
    subplot(4,2,WhichPlot)
    bar(1:NTerms, Approximation, 'k')
    xlabel('Number of terms {\it n}')
    ylabel('{\it n}-term approximation')
    if WhichPlot==1
        title(sprintf('Approx. of sin(%0.4f) (%s)', MyAngle, NetID))
    else
        title(sprintf('Approx. of sin(%0.4f)', MyAngle))
    end
    grid on
    % Make and label the relative error plot
    WhichPlot = WhichPlot + 1;
    subplot(4,2,WhichPlot)
    bar(1:NTerms, log10(abs(RError)), 'k')
    xlabel('Number of terms')
    ylabel('log_{10}|rel error|')
    title(sprintf('Rel. Err. for sin(%0.4f)', MyAngle))
    grid on
end
%% Save to a "tall" eps file
orient tall
print -depsc SinSeriesCheckerPlot
orient portrait