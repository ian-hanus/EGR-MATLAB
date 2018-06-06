function AnimateSMD(br, fnum, scf)
% AnimateSMD  Make an animation of the system in Figure P22.15
%   AnimateSMD(br) runs an animation assuming the position of the 
%   box is given in the first vector.  This animation is run in figure 1
%
%   AnimateSMD(br, fnum) same as above, but runs in figure fnum
%
%   AnimateSMD(br, fnum, scf) same as above, but if scf is 1 the
%   positions will be normalized to the maximum reasonable plotting 
%   distance for the animation and the x-tick marks will be turned off
%
%   Example
%     t=linspace(0, 50, 500);
%     x1 = sin(t);
%     AnimateSMD(x1, 3, 1);

% v.1: Michael R. Gustafson II (mrg@duke.edu), 01DEC2016
% Based on Figure P22.15, Applied Numerical Methods with MATLAB
% Steven C. Chapra, 3rd Ed.

if nargin<1, error('Need at least one input'), end
if nargin<2, fnum=1, end
if nargin<3, scf=0, end
if scf==1, scaler=max([br(:)]); ...
        br=br/scaler*2; end
br = br(:)'+4;
DampS = 1;
MassX = @(br) [br-8 br br br-8 br-8];
MassY = [1 1 5 5 1];
Thetamax = 4.5*360;
Theta = linspace(0, 4.5*360, 1000);
SpringX = @(br) [br br+1, ...
    br+1+0.5*cosd(Theta)+Theta/Thetamax*(10-br-2), ...
    8.75 10];
SpringY = [4 4 4+0.5*sind(Theta) 4 4];
DampX = @(br) [br, ...
    (br+10)/2-DampS/2 (br+10)/2-DampS/2, ...
    (br+10)/2+DampS/2 (br+10)/2+DampS/2, 10, ...
    (br+10)/2+DampS/2 (br+10)/2+DampS/2,...
    (br+10)/2-DampS/2 (br+10)/2-DampS/2];
DampY = [2 2 2+DampS/2 2+DampS/2 2 2 2 2-DampS/2 2-DampS/2 2];

figure(fnum); clf; 
hold on
Wall = fill([-20 0 0 1 1 -20 -20]+10,...
    [0 0 6 6 -1 -1 0], 'k')
Mass = patch(MassX(br(1)), MassY, 'b');
WTheta = linspace(0, 2*pi, 100);
Wheel1 = fill(0.5*cos(WTheta)-2.5, 0.5*sin(WTheta)+0.5,... 
    'ro', 'MarkerFaceColor', 'r', 'MarkerSize', 32)
Wheel2 = fill(0.5*cos(WTheta)+2.5, 0.5*sin(WTheta)+0.5,... 
    'ro', 'MarkerFaceColor', 'r', 'MarkerSize', 32)
Spring = plot(SpringX(br(1)), SpringY, 'm-');
Damper = plot(DampX(br(1)), DampY, 'k');
axis([-13 12.5 -1.5 6.5]); axis equal
for k=2:length(br)
set(Mass,   'xdata', MassX(br(k)), 'ydata', MassY)
set(Wheel1, 'xdata', br(k)-6.5+0.5*cos(WTheta))
set(Wheel2, 'xdata', br(k)-1.5+0.5*cos(WTheta))
set(Spring, 'xdata', SpringX(br(k)), 'ydata', SpringY)
set(Damper, 'xdata', DampX(br(k)), 'ydata', DampY)
axis([-13 12.5 -1.5 6.5])
if scf==1, set(gca, 'XTick', []), end
drawnow
end