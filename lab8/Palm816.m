 % I have adhered to all the tenets of the 
 % Duke Community Standard in creating this code.
 % Signed: [ih52]
%% Create function
function [a, b, c] = findquad(x,y,flag)

%% Check user inputs
if nargin < 2
   error('Not enough arguments.')
end
if nargin == 2
    flag = 0;
end

%% Create matrices
Amat = [x(1)^2, x(1), 1;x(2)^2, x(2), 1;x(3)^2, x(3), 1];
bmat = [y(1); y(2); y(3)];

%% Check condition number
if cond(Amat,2) > 10^5
    error('Matrix is ill-conditioned')
end

%% Solve for a, b, & c
Solutions = Amat\bmat;
a = Solutions(1)
b = Solutions(2)
c = Solutions(3)

%% Plot of polynomial
if flag == 1
    MyPoly = @(x) a*x.^2+b*x+c;
    Xmin = min(x) - 0.1*(max(x)-min(x));
    Xmax = max(x) + 0.1*(max(x)-min(x));
    Xvals = linspace(Xmin,Xmax,100);
    plot(Xvals,MyPoly(Xvals),'k-')
    hold on 
    for k = 1:3
        plot(x(k),y(k),'bs','LineWidth',3,'MarkerSize',12,'MarkerFaceColor','g')
    end
    hold off
    grid on
    xlabel('x')
    ylabel('y')
    title(sprintf('Graph of y =%0.2ex^2%+0.2ex%+0.2e',a,b,c))
end
print -depsc Palm816fig3
