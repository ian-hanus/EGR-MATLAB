clear; format short e
MyExp = @(x, n) (1 + (x./n)).^n

MyExp(1, 1)
MyExp(1, 10)
MyExp(1, 100)
MyExp(1, 1000)
MyExp(1, 10000)
MyExp(1, 100000)
n = logspace(0, 18, 1e3);
figure(1); clf
semilogx(n, MyExp(1, n), 'b-')