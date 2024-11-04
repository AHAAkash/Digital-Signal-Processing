%Write a program to implement RAND Function (random signal)
clc;
clear all;
close all;
%analog signal
t=-10:1:20;
y=rand(1,31);
subplot(2,1,1);
plot(t,y);
xlabel('time');
ylabel('Amplitude');
title('ploting Random signal');
%discrete signal
subplot(2,1,2);
stem(t,y);
xlabel('time');
ylabel('Amplitude');
title('Discrete Random signal');
