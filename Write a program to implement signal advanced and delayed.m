% advanced and delayed signal 

clc;clear all;close all;

%% original signal
n=input('enter required number for shifting ');
t=-5:4;
x=[-1,0,1,2,3,4,4,4,4,4]
subplot(3,1,1);
stem(t,x);
xlabel('time');
ylabel('amplitude');
title('original signal');

%% signal advanced/left shift
s=(t-n);% time advance
subplot(3,1,2);
stem(s,x);
xlabel('time');
ylabel('amplitude');
title('left shifting (advanced)');


%% signal delay/right shift
s=(t+n);
subplot(3,1,3);
stem(s,x);
xlabel('time');
ylabel('amplitude');
title('right shifting (delay) ');
