 % I have adhered to all the tenets of the 
 % Duke Community Standard in creating this code.
 % Signed: [ih52]
%% Initialize workspace
clear; format short e

%% Create coefficient matrix A
A = [1 -5 -2; 6 3 1; 7 3 -5];
    
%% Create c values for plotting
c = linspace(-10,10,201);

%% Loop through different c values
for k = 1:length(c)
    b = [11*c(k); 13*c(k); 10*c(k)];
    MyVals = A\b
    x(k) = MyVals(1);
    y(k) = MyVals(2);
    z(k) = MyVals(3);
end

%% Make and save plot
plot(x,c,'k-',y,c,'c-.',z,c,'m--')
legend('x-values','y-values','z-values')
title('Plot of Palm 8.5(b)')
xlabel('c value')
ylabel('Solutions value')
print -depsc Palm85bPlot