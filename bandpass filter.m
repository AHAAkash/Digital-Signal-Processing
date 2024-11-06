clc;
close all;
clear all;

%signal 1

t = 0 : 1 : 100; % Time Samples
f1 = 10; % Input Signal Frequency
fs = 100; % Sampling Frequency
x = 4*sin(2*pi*f1/fs*t); % Generate Sine Wave

f2=30;
y=3*sin(2*pi*f2/fs*t);

f3=5;
z=3*sin(2*pi*f3/fs*t);

m=x+y+z;

subplot(3,1,1);
plot(t,m); 
%plotting input sequence
ylabel('Amplitude');
xlabel('Time');
title('Input');

N = length(m); %finding the length of entered sequence for N point FFT

A=fft(m);
magnitude1 = abs(A); % absolute values of individual FFT complex 

t = 0:N/2;
subplot(3,1,2);
stem(t,magnitude1(1:(N/2+1)));
%plotting FFT sequence
ylabel('Amplitude');
xlabel('Frequency');
title('FFT Built in');

d = designfilt("bandpassfir",'FilterOrder',15,'CutoffFrequency1',2,'CutoffFrequency2',20,'SampleRate',fs);
afterfilter=filter(d,m); %m=mixed signal

%% FFT after filter
Aft=fft(afterfilter);
magnitude2 = abs(Aft); % absolute values of individual FFT complex 

t = 0:N/2;
subplot(3,1,3);
stem(t,magnitude2(1:(N/2+1)));
%plotting FFT sequence
ylabel('Amplitude');
xlabel('Frequency');
title('FFT After Filter');
