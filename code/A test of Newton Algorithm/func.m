function [f,df] = func
syms x y
f1=x^2-2*x-y+0.5;
f2=x^2+4*y^2-4;
f=[f1 f2]
df=jacobian([f1 f2],[x y])
end
