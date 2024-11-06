clc;
clear all;
close all;

% Load audio signals
[audio1, fs1] = audioread('sample.wav'); % Load first audio signal
[audio2, fs2] = audioread('Bak.wav');    % Load second audio signal

% Convert stereo to mono if necessary by using only one channel
audio1 = audio1(:,1);
audio2 = audio2(:,1);

% Ensure both signals are of the same length for cross-correlation
min_length = min(length(audio1), length(audio2));
audio1 = audio1(1:min_length);
audio2 = audio2(1:min_length);

% Calculate time axis for plotting
t = (0:length(audio1)-1) / fs1;

% Plot original signals
figure;
subplot(4, 2, 1);
plot(t, audio1);
xlabel('Time (s)');
ylabel('Amplitude');
title('Sample.wav Signal');

subplot(4, 2, 2);
plot(t, audio2);
xlabel('Time (s)');
ylabel('Amplitude');
title('Bak.wav Signal');

% Find Cross-correlation between audio signals
cross_corr = xcorr(audio1, audio2); % Compute cross-correlation
lag = (-(length(cross_corr) - 1) / 2 : (length(cross_corr) - 1) / 2) / fs1; % Lag axis
subplot(4, 2, 3);
plot(lag, cross_corr);
xlabel('Lag (s)');
ylabel('Cross-correlation Amplitude');
title('Cross-correlation of Sample.wav and Bak.wav');

% Find Frequencies using FFT
N = length(audio1); % Length of the signal
fft_a1 = fft(audio1); % FFT of first audio
fft_a2 = fft(audio2); % FFT of second audio

%Play audio signals (Optional)
sound(audio1, fs1); 
sound(audio2, fs2);

% Frequency axis
f = (0:N/2) * (fs1 / N);

% Magnitude of FFT
magni1 = abs(fft_a1(1:N/2+1));
magni2 = abs(fft_a2(1:N/2+1));

% Plot FFT of Sample.wav
subplot(4, 2, 4);
plot(f, magni1);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('FFT of Sample.wav Signal');

% Plot FFT of Bak.wav
subplot(4, 2, 5);
plot(f, magni2);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('FFT of Bak.wav Signal');

% Apply Low Pass Filter with Cut-off Frequency 20 Hz
d = designfilt('lowpassfir', 'FilterOrder', 16, 'CutoffFrequency', 20, 'SampleRate', fs1); % Design low-pass filter

filtered_audio1 = filter(d, audio1); % Apply filter to Sample.wav
filtered_audio2 = filter(d, audio2); % Apply filter to Bak.wav

% FFT of Filtered Signals
fft_filtered_audio1 = fft(filtered_audio1); % FFT after filtering for Sample.wav
fft_filtered_audio2 = fft(filtered_audio2); % FFT after filtering for Bak.wav

% Magnitude of FFT after filtering
magni_filtered1 = abs(fft_filtered_audio1(1:N/2+1));
magni_filtered2 = abs(fft_filtered_audio2(1:N/2+1));

% Plot FFT of Sample.wav after Low Pass Filter
subplot(4, 2, 6);
plot(f, magni_filtered1);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('FFT of Sample.wav after Low Pass Filter');

% Plot FFT of Bak.wav after Low Pass Filter
subplot(4, 2, 7);
plot(f, magni_filtered2);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('FFT of Bak.wav after Low Pass Filter');
