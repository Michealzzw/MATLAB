clear;
x = -5 : 1 : 5;
R = 1 ./ ( 1 + x .^ 2 );
Rd = -2 * x ./ ((1 + x.^ 2).^ 2);
t = -5 : 0.1 : 5;
Rf = 1 ./ (1 + t .^ 2 );
II = IteratedInterpolation( x , R , t );
HCI = HermiteCubicInterpolation( x , R , Rd , t );
NSI = NaturalSplineInterpolation( x , R , t );
figure(6)
plot( t , Rf , 'r' );
figure(1)
plot( t , Rf , 'r' , t , II , 'g' ,  x , R , 'b' ,...
    t , HCI , 'c', t , NSI , 'm');
figure(2)
plot( t , Rf , 'r' , t , II , 'b' );
figure(3)
plot( t , Rf , 'r' , x , R , 'b' );
figure(4)
plot( t , Rf , 'r' , t , HCI , 'b' );
figure(5)
plot( t , Rf , 'r' ,  t , NSI , 'b');