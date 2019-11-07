clear all;
x0=[0.03 0.07 0.1 0.1 0.1 0.2 0.3 0.05];
delta = 0.5;   % elasitisity
e1 = 3;        % human capital of rich
e2 = 1;        % human capital of poor
phi = 0.33;    % elastisity of capital
A = 2;         % technology
alpha1 = 0.3;  % share of the rich
alpha2 = 1-alpha1; % share of the poor
pho1 = 0.9;     %time preference for rich
pho2 = 0.7;     %time prefernec for poor, which is less patient
g = 0.3;

% 
gamma = 0.06;  % tax progressivity

[x,n,data]=Newton(x0);
disp ('计算结果为：')
x
disp ('迭代次数为：')
n
