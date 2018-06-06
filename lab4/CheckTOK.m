 % I have adhered to all the tenets of the 
 % Duke Community Standard in creating this code.
 % Signed: [ih52]
function [Val] = CheckTOK(C,p)
if nargin == 1
    p = 0;
end
if p==1
    fprintf('Your Cards: %s %s %s\n', C(1,:),C(2,:),C(3,:));
end
if p==1
    if C(1)~=C(2)|C(1)~=C(3);
        fprintf('Nothing...\n');
        Val = 0;
    else
        fprintf('Three of a Kind!\n');
        Val = 4;
    end
else
    if C(1)==C(2) & C(1)==C(3)
        Val = 4;
    else 
        Val = 0;
    end
end
