%startx = [-1;2;1/exp(1)];
%startx = [1;-2;exp(2)];
%startx = [1;2;exp(2)];
%startx = [1;-2;1/exp(1)];
x = GradientMethod(startx);
F(x);
%G(x)
%norm(Gra(x),2)
%F(x)
%x = (Newton(x))';
x = Spoint(x)
F(x);