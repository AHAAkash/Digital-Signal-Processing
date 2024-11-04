%Write a program to implement UNIT RAMP SIGNAL
clc;
close all;
clear all;
t=-10:10;
x=[zeros(1,10),ones(1,11)];
r=t.*x;  %ramp function
subplot(2,1,1);
plot(t,r);
xlabel('time');
ylabel('Amplitude');
title('Unit Ramp signal');
subplot(2,1,2);
stem(t,r);
xlabel('time');
ylabel('Amplitude');
title('Unit ramp signal');
