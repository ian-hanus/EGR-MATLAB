clear; format short e

%% Define function
f = @(x) (x-pi).*(x-4).*(x-5);

%% Define the limits and resolution
xmin = 0;
xmax = 6;
nx   = 1e6;
x    = linspace(xmin, xmax, nx);

%% Find and report roots
RootLoc = find(f(x)==0)
NumRoots = numel(RootLoc)
for k=1:NumRoots
   fprintf('Root number %2.0f: %+0.3e\n',...
       k, x(RootLoc(k)))
end

%% Find and report brackets
NumBrackets = 0;
Bracket = [];

for brack=1:(nx-1)
    if sign(f(x(brack))*f(x(brack+1)))==-1
       NumBrackets = NumBrackets + 1; 
       Bracket(NumBrackets,:) = ...
           [x(brack) x(brack+1)]
    end   
end


%% Make plots
figure(1); clf
subplot(2, 1, 1)
plot(x, f(x), 'k.-')
pos = find(f(x)>0);
neg = find(f(x)<0);
hold on
plot(x(pos), f(x(pos)), 'b.')
plot(x(neg), f(x(neg)), 'r.')
hold off
grid on

subplot(2, 1, 2)
plot(x, sign(f(x)), 'k-')
axis([xmin xmax -1.2 1.2])