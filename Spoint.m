function [ x ] = Spoint( x )
%UNTITLED13 Summary of this function goes here
%   Detailed explanation goes here
k = 1;
TOL = 1e-5;
while (norm(F_point(x)-x,2)>TOL)
    x = F_point(x);
    k = k+1;
    if (k>100) break;end
end

end

