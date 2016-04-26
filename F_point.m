function [ ans ] = F_point( x )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
ans = zeros(3,1);
ans(1) = -1/3*2^x(2)+1/3*x(3)^3;
ans(2) = sqrt(3-sin(x(1))-log(x(3)));
ans(3) = (6-x(1)^2-x(2)^2)^(1/3);

end

