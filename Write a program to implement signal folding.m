%% signal folding 
clc;clear all;close all;

%% original signal
t=-5:1:5;
x=[0,0,1,1,1,0,1,2,3,4,0];% or x=sin(2*pi*t)
subplot(2,1,1);
stem(t,x);
xlabel('time');
ylabel('amplitude');
title('original signal');

%% folding signal
f=fliplr(x);% function for folding 
subplot(2,1,2);
stem(t,f);
xlabel('time');
ylabel('amplitude');
title('folding signal');
