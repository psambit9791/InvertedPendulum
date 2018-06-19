M = 0.5;
m = 0.2;
b = 0.1;
I = 0.006;
l = 0.3;
g = 9.8;
q = (I+m*l*l)*(M+m) - (m*l)^2;

s = tf('s');

P_pend = ((m*l*s^2)/q)/(s^4 + (b*(I+m*l*l)*s^3)/q - ((M+m)*m*g*l*s^2)/q - b*m*g*l*s/q);
P_cart = (((I+m*l*l)*s^2-m*g*l)/q)/(s^4 + (b*(I+m*l*l)*s^3)/q - ((M+m)*m*g*l*s^2)/q - b*m*g*l*s/q);

sys_tf = [P_cart;P_pend];

inputs = {'Fv'};
outputs = {'x';'phi'};

set(sys_tf,'InputName',inputs);
set(sys_tf,'OutputName',outputs);

t = 0:0.01:1;
impulse(sys_tf,t);

title('Open Loop Impulse Response');