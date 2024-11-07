clc;
clear all;
close all;
%% Input the samples
% Time domain response of FIR filter
N=16; %Input samples
k=0:N-1;
x=(k==0);
b0=1; b1= -1; b2=-2;
B=[b0,b1,b2]; %Numerator coeff.
A=1; %Denominator coeff.
%Filtering
y=filter(B, A ,x);
%Plot the graph
subplot(2,2,1), stem(k,x,'r');
xlabel('Time');
ylabel('Unit Impulse');
title('Impulse input');
subplot(2,2,2), stem(k,y,'r');
xlabel('Frequency');
ylabel('Magnitude');
title('Impulse Response FIR Filter');
% Time domain Response of IIR Filter
N1=10; %input samples
k1=0:N1-1;
x1=(k1==0);
B1=1;
a=0.8;
A1=[1,-a];
y1=filter(B1, A1 ,x1);
%plot the graph
subplot(2,2,3), stem(k1,x1,'r');
xlabel('Time');
ylabel('Unit Impulse');
title('Impulse input');
subplot(2,2,4), stem(k1,y1,'r');
xlabel('Frequency');
ylabel('Magnitude');
title('Impulse Response IIR Filter');
