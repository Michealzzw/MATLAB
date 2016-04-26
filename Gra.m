function [ z ] = Gra( x )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
    z = zeros(3,1);
    z(1) = 2*cos(x(1))*(sin(x(1))+x(2)^2+log(x(3))-3)+6*(3*x(1)+2^x(2)-x(3)^3)+4*x(1)*(x(1)^2+x(2)^2+x(3)^3-6);
    z(2) = 4*x(2)*(sin(x(1))+x(2)^2+log(x(3))-3)+2^x(2)*2*log(2)*(3*x(1)+2^x(2)-x(3)^3)+4*x(2)*(x(1)^2+x(2)^2+x(3)^3-6);
    z(3) = 2/x(3)*(sin(x(1))+x(2)^2+log(x(3))-3)-6*x(3)^2*(3*x(1)+2^x(2)-x(3)^3)*(3+2^x(2)\log(2))+6*x(3)^2*(x(1)^2+x(2)^2+x(3)^3-6);
    
end

