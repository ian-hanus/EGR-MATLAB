clear; figure(1); clf; RunBuildingDiff;
% Set floor height, width, and difference between floors
H = 1;
W = 16;
DF = 2
figure(2); clf; hold on
% Draw the foundation
Base = fill([-H/2 W+H/2 W+H/2 -H/2 -H/2], [-H -H 0 0 -H], 'k')
% Define size of each floor
LevelX = [0 W W 0 0]; LevelY = [0 0 H H 0];
% Draw each floor's undisturbed position
B1 = fill(LevelX, LevelY+DF, 'b');
B2 = fill(LevelX, LevelY+2*DF+H, 'k');
set(B2, 'FaceColor', [0 .5 0]);
B3 = fill(LevelX, LevelY+3*DF+2*H, 'r-');
% Draw connections between floors
S1 = plot([0 W; 0 W], [0 0; DF DF], 'k');
S2 = plot([0 W; 0 W], [0 0; DF DF]+DF+H, 'k');
S3 = plot([0 W; 0 W], [0 0; DF DF]+2*DF+2*H, 'k');
% Expand view
axis([-W/2, W+W/2, -H/2, 3*DF+3*H+H/2])
% Set FN from output of ode45
F1 = yout(:,1);F2 = yout(:,3);F3 = yout(:,5);
% Loop and draw
for k=1:length(F1)
    set(B1,    'XData', LevelX+F1(k))
    set(B2,    'XData', LevelX+F2(k))
    set(B3,    'XData', LevelX+F3(k))
    set(S1(1), 'XData', [    0, F1(k)])
    set(S1(2), 'XData', [    0, F1(k)]+W)
    set(S2(1), 'XData', [F1(k), F2(k)])
    set(S2(2), 'XData', [F1(k), F2(k)]+W)
    set(S3(1), 'XData', [F2(k), F3(k)])
    set(S3(2), 'XData', [F2(k), F3(k)]+W)
    drawnow
end
