[Y, fs] = audioread('samples/original/sample1.wav');
% Y is the audio data, fs is the sampling rate
t = linspace(0, length(Y)/fs, length(Y));
figure; plot(t, Y);
xlabel("Time"); ylabel("Amplitude");
title("Original Audio Signal in Time Domain");

% Apply FFT

N = length(Y);
f = linspace(0, fs, N);
X = fft(Y, N);
figure; plot(f(1:N/2), X(1:N/2));
xlabel("Frequency"); ylabel("Amplitude");
title("Original Audio Signal in Frequency Domain");

% Zeroing Out Noise

X(1:10) = 0;
for i = 1:length(X)
  if abs(X(i)) < 30
    X(i) = 0;
  endif
endfor

figure; plot(f(1:N/2), X(1:N/2));
xlabel("Frequency"); ylabel("Amplitude");
title("Modified Audio Signal in Frequency Domain (Zeroing Out Noise)");

% Apply IFFT

y_prime = ifft(X);
t = linspace(0, length(y_prime), length(y_prime));
figure; plot(t, y_prime);
xlabel("Time"); ylabel("Amplitude");
title("Modified Audio Signal in Time Domain (Zeroing Out Noise)");
audiowrite(y_prime, fs, 'samples/clean/sample1.wav');