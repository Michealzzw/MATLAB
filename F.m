function [ ans ] = F( xx )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
ans = zeros(3,1);
x = xx(1);
y = xx(2);
z = xx(3);
ans(1) = (sin(x)+y^2+log(z)-3);
ans(2) = (3*x+2^y-z^3);
ans(3) = (x^2+y^2+z^3-6);

end

