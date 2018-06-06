 % I have adhered to all the tenets of the 
 % Duke Community Standard in creating this code.
 % Signed: [ih52]
%% Create function
function [L] = FenceLength(W,A);
%% Check for conditions
if W<=0
    error('Incorrect entry or entries.')
elseif A<=0
    error('Incorrect entry or entries.')
elseif numel(W)~=1
    error('Incorrect entry or entries.')
elseif numel(A)~=1
    error('Incorrect entry or entries.')
elseif nargin ~= 2
    error('Incorrect entry or entries.')
elseif A.^2 < W.^2./4
    error('Impossible Area')
%% Calculate Length
else
    L = (A - .5*(W./sqrt(2)).^2)./W;
end
% Total Length = W + 2((A - .5*(W./sqrt(2)).^2)./W)+2(sqrt(w^2/2))