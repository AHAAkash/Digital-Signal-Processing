clc;
clear all;
close all;
%% Bandstop Filter Specifications
Wp=input('Enter the pass band edge frequency : ');
Ws=input('Enter the stop band edge frequency : ');
Rp=input('Enter the Pass band ripple: ');
Rs=input('Enter the stop band gain: ');
%To find order of the filter
[N]=cheb1ord(Wp,Ws,Rp,Rs,'s')
%To find cut off frequency
Wc=[Wp Ws];
%Bandstop Filtering
[b,a]=cheby1(N,Rp,Wc,'stop','s');
%plotting magnitude and phase response
figure(1);freqs(b,a);
