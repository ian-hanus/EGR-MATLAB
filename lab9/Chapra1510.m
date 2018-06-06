%% Initialize workspace
clear; format short e

%% Determine coefficients using general linear regression
t = [0.5 1 2 3 4 5 6 7 9];
tv = t(:);
Pt = [6 4.4 3.2 2.7 2 1.9 1.7 1.4 1.1];
Ptv = Pt(:);
yeqn = @(coefs, dummyt) coefs(1)*exp(-1.5*dummyt) + coefs(2)*exp(-0.3*dummyt) + coefs(3)*exp(-0.05*dummyt)
A = [exp(-1.5*tv) exp(-0.3*tv)  exp(-0.05*tv)];
MyCoefs = A\Ptv

%% Generate a model and plot
tmodel = linspace(min(t),max(t),100);
Ptmodel = yeqn(MyCoefs, tmodel);
plot(tmodel,Ptmodel,'k-',t,Pt,'b+')
xlabel('Time (s)'); ylabel('Organism Decay (organisms/cm^3'); title('Disease Carrying Organism Decay')
print -depsc Chapra1510Plot1

%% Plot concentrations of organisms
figure(2); clf
ConcA = MyCoefs(1)*exp(-1.5*tmodel);
ConcB = MyCoefs(2)*exp(-0.3*tmodel);
ConcC = MyCoefs(3)*exp(-0.05*tmodel);
plot(tmodel,ConcA,'k-',tmodel,ConcB,'k-.',tmodel,ConcC,'k--')
legend('Species A','Species B','Species C')
print -depsc Chapra1510Plot2

%% Determine St, Sr, and r2 values
Pthat = yeqn(MyCoefs,t)
St = sum((Pt - mean(Pt)).^2)
Sr = sum((Pt - Pthat).^2)
r2 = (St - Sr)/St