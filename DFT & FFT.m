clc;
clear all;
close all;
N=input('Enter the number of elements:');
for i=1:N
re(i)= input('Enter the real part of the element:');
im(i)= input('Enter the imaginary part of the
element:');
end
%% Call Dit_fft function
[re1,im1]= ditfft(re,im,N);
disp(re1);
disp(im1);
figure(1);
subplot(2,2,1);
stem(re1);
xlabel('Time period');
ylabel('Amplitude');
title('Real part of the output');
subplot(2,2,2);
stem(im1);
xlabel('Time period');
ylabel('Amplitude');
title('Imaginary part of the output');
%%dit_ifft
N=input('Enter the number of elements:');
for i=1:N
re(i)= input('Enter the real part of the element:');
im(i)= input('Enter the imaginary part of the
element:');
end
for i=1:N
re(i)=re(i);
im(i)=-im(i);
end
%% call dit_ifft function
[re1,im1]=ditifft(re,im,N);
for i=1:N
re1(i)=re1(i)/N;
im1(i)=-im1(i)/N;
end
disp(re1);
disp(im1);
%figure(2)
subplot(2,2,3);
stem(re1);
xlabel('Time period');
ylabel('Amplitude');
title('Real part of the output');
subplot(2,2,4);
stem(im1);
xlabel('Time period');
ylabel('Amplitude');
title('Imaginary part of the output');
