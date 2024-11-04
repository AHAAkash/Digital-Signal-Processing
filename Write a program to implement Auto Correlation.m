%Write a program to implement Auto Correlation
clc;
clear all;
close all;

%x=[1 2 3 5 7 1];
%subplot(2,1,1);
%stem(x);

%y=xcorr(x,x);
%subplot(2,1,2);
%stem(y);

t=0:1:1000;     % Generate a random noise signal of length equal to the time vector.
x=randn(1,length(t)); % implement auto correlation using random gaussian noise 
subplot(2,1,1);
plot(t,x);
y=xcorr(x,x);     % Calculate the autocorrelation of the signal x.
% Define time vectors for positive and negative lags.
t1=t;               % Original time vector.
t2=-fliplr(t1);     % Negative time vector by flipping t1 and negating it.
% Determine the range for the time vector of the autocorrelation plot.
n1=min(t1)+min(t2);  % Minimum lag value.
n2=max(t1)+max(t2);  % Maximum lag value.
% Create a time vector n for the autocorrelation plot.
n=n1:1:n2;
 
subplot(2,1,2);
plot(n,y);
