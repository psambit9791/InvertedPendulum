M = 0.5;
m = 0.2;
b = 0.1;
I = 0.006;
l = 0.3;
g = 9.8;
q = (I+m*l*l)*(M+m) - (m*l)^2;

A  = [0     1            0           0;
      0 -b*(I+m*l^2)/q (g*(m*l)^2)/q 0;
      0     0            0           1;
      0     -b*m*l/q   m*g*l*(M+m)/q 0];
  
B  = [0;
      (I+m*l*l)/q;
      0;
      m*l/q];
  
C  = [1 0 0 0;
      0 0 1 0];
  
D  = [0;
      0];
  
Q = C'*C;
R = 1;
K = lqr(A,B,Q,R);

Ac = (A-B*K);
Bc = B;
Cc = C;
Dc = D;

states = {'x' 'x_dot' 'phi' 'phi_dot'};
inputs = {'r'};
outputs = {'x' 'phi'};

sys_cl = ss(Ac,Bc,Cc,Dc,'statename',states,'inputname',inputs,'outputname',outputs);

t = 0:0.01:15;
u = ones(size(t));
[y,t,x]=lsim(sys_cl,u,t);
[AX,H1,H2] = plotyy(t,y(:,1),t,y(:,2),'plot');
set(get(AX(1),'Ylabel'),'String','cart position (m)')
set(get(AX(2),'Ylabel'),'String','pendulum angle (radians)')
title('Step Response with LQR Control')