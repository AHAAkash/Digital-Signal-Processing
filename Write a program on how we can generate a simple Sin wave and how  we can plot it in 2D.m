clc;
clear all;
close all;
%Write a program on how we can generate a simple Sin wave  and how we can plot it in 2D 
Fs=4000; %Sampling Frequency
Ts=1/Fs;
t=0:Ts:1;
f=4;                 %Frequency
X=sin(2*pi*f*t);
plot(t,X);
xlabel('Time in seconds');
ylabel('Amplitude');
title('Sine Wave');
