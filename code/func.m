function [f,df] = func
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
syms w k p_1 p_2 epsilon l_1 l_2 r
f(1)= r - A*phi*k^(phi-1)+1;
f(2)= w - A*k^phi+k*A*phi*k^(phi);
f(3)= p_1 - epsilon-gamma*e1*(1-l_1)*w;
f(4)= p_2 - epsilon-gamma*e2*(1-l_2)*w;
f(5)= l_1 - (1-p_1)*e1*(1-l_1)*w/((1+r)^(delta/(1-delta))*pho1^(1/(1-delta))+1)*(e1*(1-epsilon)*w-gamma*e1^2*(1-l_1)*w^2)^(1/(delta-1));
f(6)= l_2 - (1-p_2)*e2*(1-l_2)*w/((1+r)^(delta/(1-delta))*pho2^(1/(1-delta))+1)*(e2*(1-epsilon)*w-gamma*e2^2*(1-l_2)*w^2)^(1/(delta-1));
f(7)= g - (alpha1*p_1*e1*(1-l_1)*w+alpha2*p_2*e2*(1-l_2)*w);
f(8)= k - (alpha1*(1-p_1)*e1*w*(1-l_1)/((1+r)^(delta/(delta-1))*pho1^(1/(delta-1))+1)+alpha2*(1-p_2)*e2*w*(1-l_2)/((1+r)^(delta/(delta-1))*pho2^(1/(delta-1))+1))/(alpha1*e1*(1-l_1)+alpha2*e2*(1-l_2));

f=[f(1) f(2) f(3) f(4) f(5) f(6) f(7) f(8)];
df=jacobian([f(1) f(2) f(3) f(4) f(5) f(6) f(7) f(8)],[w k p_1 p_2 epsilon l_1 l_2 r]);
end
