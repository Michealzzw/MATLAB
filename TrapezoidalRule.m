function [ TD ] = TrapezoidalRule( f , h )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    len = length(f);
    TD = 0;
    for i = 1 : (len-1)
        TD = TD + (f(i)+f(i+1))*h/2;
    end

end

