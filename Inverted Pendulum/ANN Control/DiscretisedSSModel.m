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
      0 1 0 0;
      0 0 1 0;
      0 0 0 1];
  
D  = [0;
      0;
      0;
      0];
  
states = {'x' 'x_dot' 'phi' 'phi_dot'};
inputs = {'Fv'};
outputs = {'x' 'xdot' 'phi' 'phidot'};

sys_ss = ss(A,B,C,D,'statename',states,'inputname',inputs,'outputname',outputs);
sysd = c2d(sys_ss,0.001,'tustin')