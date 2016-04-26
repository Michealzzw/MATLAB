function [ ans ] = G( input )
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
    x = input(1);
    y = input(2);
    z = input(3);
    ans = (sin(x)+y^2+log(z)-3)^2+(3*x+2^y-z^3)^2+(x^2+y^2+z^3-6)^2;
    
end

