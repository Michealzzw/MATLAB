function [ H ] = HermiteCubicInterpolation( x , f , fd , t )
%PiecewiseLinearInterpolation
mark = 1;
H = t;
for q = 1 : length(t)
    if (t(q) > x(mark + 1)) 
        mark = mark + 1;
    end
    H(q) = 0;
    for opp = 0:1
        space = x(mark + (1 - opp)) - x(mark + opp);
        disnow = t(q) - x(mark + (1 - opp));
        disopp = t(q) - x(mark + opp);
        Ld = 1 / space;
        L = disopp / space;
        Hj = (1 - 2 * disnow * Ld) * (L ^ 2);
        Hj_ = disnow * (L ^ 2);
        H(q) = H(q) + f(mark + (1 - opp)) * Hj + fd(mark + (1 - opp)) * Hj_;
    end
end
end


