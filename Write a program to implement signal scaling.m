clc;clear all;close all;

%% input taking
n=input('enter number of scaling');

%% original signal 
t=-5:1:5;
x=[0,2,4,3,1,0,1,2,3,4,0]; % or f=2; fs=10; x=sin(2*pi*f/fs*t);
subplot(2,1,1);
stem(t,x);
xlabel('time');
ylabel('amplitude');
title('original signal');

%% scaled signal
s=x.*n;
subplot(2,1,2);
stem(t,s);
xlabel('time');
ylabel('amplitude');
title('scalling');
