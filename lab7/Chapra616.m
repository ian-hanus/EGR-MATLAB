 % I have adhered to all the tenets of the 
 % Duke Community Standard in creating this code.
 % Signed: [ih52]
%% Initialize workspace
clear; format short e
%% Establish functions
V = @(r,h,L) (r.^2.*acos((r-h)/r)-(r-h).*sqrt(2.*r.*h-h.^2)).*L;
Height = zeros(1,6);
x = linspace(10,60,6)
for k = 1:numel(x)
    [Height(k)] = fzero(@(dummyv) V(2,dummyv,5)-x(k),[0 4]);
end
Height = Height