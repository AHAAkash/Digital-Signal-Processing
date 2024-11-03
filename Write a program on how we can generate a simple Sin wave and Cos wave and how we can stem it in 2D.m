clc;
clear all;
close all;
%Write a program on how we can generate a simple Sin wave and Cose and how 
%we can stem it in 2D 
Fs=4000; %Sampling Frequency
Ts=1/Fs;
t=0:Ts:1;
f=4; %Frequency
%for sin wave
X=sin(2*pi*f*t);
subplot(2,1,1);
stem(t,X);
xlabel('Time in seconds');
ylabel('Amplitude');
title('Sine Wave');
grid on;
%for cos wave
y=cos(2*pi*f*t);
subplot(2,1,2);
stem(t,y);
xlabel('Time in seconds');
ylabel('Amplitude');
title('cos Wave');
grid on;
