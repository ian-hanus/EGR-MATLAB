function gzoom(n, f)
if nargin==0
    f=gca; n=0.1;
elseif nargin==1
    f=gca;
end
v=axis;
xr = (v(2)-v(1));
yr = (v(4)-v(3));
axis(f, [v + n*[-xr xr -yr yr]]);