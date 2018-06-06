%% Initialize workspace
clear; format short e

%% Express given data
I = [50 80 130 200 250 350 450 550 700];
P = [99 177 202 248 229 219 173 142 72];
Iv = I(:);
Pv = P(:);

%% Determine function coefficients
Peqn = @(coefs,I) coefs(1).*I./coefs(2).*exp(-I./coefs(2)+1)
fSSR = @(coefs,I,P) sum((P-Peqn(coefs,I)).^2);
[MyCoefs,Sr] = fminsearch(@(MyCoefsdummy) fSSR(MyCoefsdummy,Iv,Pv),[250 250])

%% Plot
figure(1); clf
Imodel = linspace(min(I),max(I),100);
Pmodel = Peqn(MyCoefs,Imodel);
plot(Imodel,Pmodel,'k',I,P,'rd')
xlabel('Solar Radiation (\muEm^(-2)^s(-1))')
ylabel('Photosynthesis Rate (mg m^(-3)d^(-1)')
title('Photosyntehsis Rate as a function of Solar Radiation (ih52)')

%% Statistical measures
St = sum((P - mean(P)).^2)
r2 = (St-Sr)/St



