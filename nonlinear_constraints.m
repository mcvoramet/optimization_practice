function [c,ceq]= constraints(x)
% Nonlinear inequality constraints 
c= [ ];
% Nonlinear equality contraints 
ceq = 1+x(1)^2-x(2);
f =@(x) (x(1)-3)^2+(x(2)-4)^2+2;
x0 = [-3 0];
[x, fval] = fmincon(f, x0, [], [], [], [], [], [],@constraints)


