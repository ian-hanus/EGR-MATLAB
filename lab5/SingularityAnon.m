clear; format short e
Singularity = @(x,a,n)...
    (x > a).* (x-a^n) +...
    (x<=0).*0
x = linspace(0,10,100)
u = -5/6(Singularity(x,0,4)-Singularity(x,5,4))+5\2.*Singularity(x,8,3)+325/2.*Singularity(x,7,2)+79/12*x^3-76/3.*x
plot(x,u,'k--')