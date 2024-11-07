
clc
clear all;
close all;
%Frequency Response

num=input('Enter num:');
denum=input('Enter denum:');
n=linspace(0,pi,1000);
h=freqz(num,denum,n);
mag=20*log(abs(h));

subplot(2,2,1),semilogx(n,mag);
xlabel('Frequency index'),ylabel('Magnitude'),title('Magnitude Response');
pha=angle(h);
subplot(2,2,2),semilogx(n,pha);
xlabel('Frequency
index'),ylabel('Phase'),title('Phase Response');
z=tf(num,denum,1)
