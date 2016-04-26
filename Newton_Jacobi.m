function [ J ] = Newton_Jacobi( x )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

J = zeros(3);
J(1,1) = cos(x(1));
J(1,2) = 2*x(2);
J(1,3) = 1/x(3);
J(2,1) = 3;
J(2,2) = log(2)*2^x(2);
J(2,3) = -3*x(3)^2;
J(3,1) = 2*x(1);
J(3,2) = 2*x(2);
J(3,3) = 3*x(3)^2;

end

