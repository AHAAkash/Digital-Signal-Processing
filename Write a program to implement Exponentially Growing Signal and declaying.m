%Write a program to implement Exponentially Growing Signal
clc;
clear all;
close all;
%Exponentially Growing Signal
t=0:0.001:1;
a=input('Enter the value of a:');
b=input('Enter the value of b:');
f=10;  %frequency
x=a*exp(b*t).*sin(2*pi*f*t);
subplot(4,1,1);
plot(t,x);
xlabel('time');
ylabel('Amplitude');
title('Exponential signal in analog');
%For discrete
subplot(4,1,2);
plot(t,x);
xlabel('time');
ylabel('Amplitude');
title('Exponential signal in discrete');
%Exponentially decaying Signal
x=a*exp(-b*t).*sin(2*pi*f*t);
subplot(4,1,3);
plot(t,x);
xlabel('time');
ylabel('Amplitude');
title('Exponential signal in analog');
%For discrete
subplot(4,1,4);
plot(t,x);
xlabel('time');
ylabel('Amplitude');
title('Exponential signal in discrete');
