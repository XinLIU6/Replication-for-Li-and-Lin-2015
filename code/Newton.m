function [x,n,data]=Newton(x0,tol)
%用牛顿法求解非线性方程组
%x0是迭代初值
%tol为允许的误差
%data来存放计算的中间计算
[f,df]=func;
w = x0(1);
k = x0(2);
p_1 = x0(3);
p_2 = x0(4);
epsilon = x0(5);
l_1 = x0(6);
l_2 = x0(7);
r = x0(8);
df = eval(df);
f = eval(f);
if nargin ==1
    tol = 1e-10;
end
x1 = x0-f/df;
n = 1;
while(norm(x1-x0)>tol)&&(n<500)
    x0=x1;
    x1=x0-f/df;
    n=n+1;
    data(:,n)=x1;
    w = x1(1);
    k = x1(2);
    p_1 = x1(3);
    p_2 = x1(4);
    epsilon = x1(5);
    l_1 = x1(6);
    l_2 = x1(7);
    r = x1(8);
    [f,df]=func;
    df = eval(df);
    f = eval(f);
end
x=x1;
