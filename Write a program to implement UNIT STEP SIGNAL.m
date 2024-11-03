%Write a program to implement UNIT STEP SIGNAL
clc;
close all;
clear all;
t2=-5:1:25;
x2=[zeros(1,5),ones(1,26)];
%For Continuous time
subplot(2,1,1);
plot(t2,x2);
xlabel('time');
ylabel('Amplitude');
title('Unit step signal in Continuous time');
%For Discrete time
subplot(2,1,2);
stem(t2,x2);
xlabel('time');
ylabel('Amplitude');
title('Unit step signal in Discrete time');
