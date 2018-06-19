M = 0.5;
m = 0.2;
b = 0.1;
I = 0.006;
l = 0.3;
g = 9.8;
q = (I+m*l*l)*(M+m) - (m*l)^2;

s = tf('s');

P_pend = ((m*l*s^2)/q)/(s^4 + (b*(I+m*l*l)*s^3)/q - ((M+m)*m*g*l*s^2)/q - b*m*g*l*s/q);

Kp = 150;
Ki = 1;
Kd = 30;
C = pid(Kp,Ki,Kd);
sys_tf = feedback(P_pend,C);

t = 0:0.05:5;
impulse(sys_tf,t);
axis([0 2.5 -0.2 0.2]);
title('Response of Pendulum to Impulse Input with PID Control: Kp = 150, Ki = 1, Kd = 30');