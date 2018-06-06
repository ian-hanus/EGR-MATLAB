MyFun2 = @(x,y) 4.*x+2.*y+x.^2-2.*x.^4+2.*x.*y-3.*y.^2;
[MaxX2,NegMaxY2] = fminsearch(@(dummyv) -MyFun2(dummyv(1),dummyv(2)),[0 0]);
MaxX2 = MaxX2
MaxY2 = -1.*NegMaxY2