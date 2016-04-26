function [ RD ] = RectRule( f , h )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
    len = length(f);
    RD = 0;
    for i = 1 : (len-1)
        RD = RD + f(i)*h;
    end

end

