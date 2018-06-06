clear; format short e
Singularity = @(x, a, n) (x>a).*((x-a).^n);
x  = linspace(-2, 5, 500);
plot(x, Singularity(x, -1, 0), 'k-',...
     x, Singularity(x,  0, 1), 'k--',...
     x, Singularity(x,  1, 1), 'k-.',...
     x, Singularity(x,  3, 2), 'k:');
legend('<x+1>^0', '<x>^1', '<x-1>^1', '<x-3>^2', 'location', 'best')
title('Four Different Values of y=<x-a>^n (NetID)');
xlabel('x');
ylabel('y');
grid off
print -deps SingPlots
