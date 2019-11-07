clear all;
x0=[0.5 0.5];

[x,n,data]=Newton(x0);
disp ('计算结果为：')
x
disp ('迭代次数为：')
n
subplot(211);
plot(data(1,:));
title('x')
subplot(212);
plot(data(2,:));
title('y')
