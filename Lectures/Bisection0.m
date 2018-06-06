%% Bisection0.m

clear; format short e
figure(1); clf

%% Define function, tolerances, and limits
f = @(x) cos(x).*sin(x*3)
FTol = 1e-6;
XTol = 1e-5;
MaxIter = 100;
xl = 0;
xr = 18;

%% Get brackets
Brackets = brackPlot(f, xl, xr, 8)
if length(Brackets)==0; error('No Brackets!'); end;

%% Pick a bracket
BrackRow = input('Which bracket? ');
xl = Brackets(BrackRow, 1);
xr = Brackets(BrackRow, 2);

%% Initialize iteration count
Iter = 1;

%% Bisection
while 1
    fl(Iter) = f(xl(Iter));
    fr(Iter) = f(xr(Iter));
    xm(Iter) = 0.5*(xl(Iter)+xr(Iter));
    fm(Iter) = f(xm(Iter));
    if abs(fm(Iter)) <= FTol
        % Function value is close enough to 0
        fprintf('\nRoot found within FTol at f(%e)\n', xm(Iter))
        break
    elseif (xr(Iter)-xl(Iter)) <= XTol
        % Left and right brackets close enough
        fprintf('\nRoot between %e and %e\n', xl(Iter), xr(Iter))
        break
    elseif Iter==MaxIter
        % Run out of time...
        fprintf('\nMeh...\n')
        break
    end
    % Bisect and determine next iteration's xl and xr
    if sign(fr(Iter))==sign(fm(Iter))
        xr(Iter+1) = xm(Iter);
        xl(Iter+1) = xl(Iter);
    else
        xl(Iter+1) = xm(Iter);
        xr(Iter+1) = xr(Iter);
    end
    Iter = Iter + 1;
end

%% Plots
figure(2)
clf
IVec = 1:Iter;
subplot(2, 1, 1)
plot(IVec, xl, 'rs--', IVec, xr, 'bo:', IVec, xm, 'kd-')
legend('left', 'right', 'mid', 0)
subplot(2, 1, 2)
plot(IVec, fl, 'rs--', IVec, fr, 'bo:', IVec, fm, 'kd-')
legend('left', 'right', 'mid', 0)

