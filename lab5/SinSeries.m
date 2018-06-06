 % I have adhered to all the tenets of the 
 % Duke Community Standard in creating this code.
 % Signed: [ih52]
%% Setup function
function [SinApprox, RelError] = SinSeries(x,N)
C = [N];
D = [N];
%% Run loop on funtion
for a = 1:N
    if a > 1
        C(a) = (-1)^(a+1).*x^((2.*a)-1)./(factorial(2*a-1)) + C(a-1);
            D(a) = (sin(x)-C(a))/sin(x);
    else
        C(a) = (-1)^(a+1).*x^((2.*a)-1)./(factorial(2*a-1));
            D(a) = (sin(x)-C(a))/sin(x);
    end
    SinApprox = C;
    RelError = D;
end
