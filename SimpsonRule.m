function [ SD ] = SimpsonRule( f , h )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    len = length(f);
    SD = 0;
    for i = 1 : (len-2)
        SD = SD + (f(i) + 4 * f(i+1) + f(i+2) )*h/3;
        i = i + 1;
    end


end

