function [x,n,data]=Newton(x0,tol)
%��ţ�ٷ��������Է�����
%x0�ǵ�����ֵ
%tolΪ��������
%data����ż�����м����
[f,df]=func;
x = x0(1);
y = x0(2);
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
    x = x1(1);
    y = x1(2);
    [f,df]=func;
    df = eval(df);
    f = eval(f);
end
x=x1;
