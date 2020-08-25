clear all; close all; clc;
fs = 8000; % Sampling Frequency
fc = 100; % Carrier Frequency
Ac = 1; % Carrier Amplitude
fm = 5; % Message Frequency
Am = 1; % Message Amplitude
kf = 100*pi; % Modulation Coefficient
%% Time Domain Analysis
t = 0:1/fs:1;
M = Am*cos(2*pi*fm*t); % Message Signal
C = Ac*cos(2*pi*fc*t); % Carrier Signal
%Intergal of M(t),
M_int = zeros(1, length(t));
for i=1:length(t)
M_int(i) = 0.5*(1/fs)*(2*sum(M(1:i)) - M(1) - M(i));
end
% FM Signal
s_FM = Ac*cos(2*pi*fc*t + kf*M_int);
figure(1)
subplot(311);
plot(t, M); ylabel('m(t)');
title('Message Signal');
subplot(312);
plot(t, C); ylabel('c(t)');
title('Carrier Signal');
subplot(313);
plot(t, s_FM, t, M); ylabel('s_{FM}(t)');
title('FM Signal');
%% Frequency Domain Analysis
M_f = fftshift(abs(fft(M)));
f = linspace(-fs/2, fs/2, length(M_f)); % Frequency Grid
figure(2)
subplot(311);
stem(f, M_f/max(M_f), '.k', 'linewidth', 1);
xlabel('Frequency (Hz)');
ylabel('Normalized |M(f)|');
xlim([-110, 110])
title('Spectrum of Message Signal');
C_f = fftshift(abs(fft(C)));
subplot(312);
stem(f, C_f/max(C_f),'.k', 'linewidth', 1);
xlabel('Frequency (Hz)');
ylabel('Normalized |C(f)|');
xlim([-110, 110])
title('Spectrum of Carrier Signal');
S_FM_f = fftshift(abs(fft(s_FM)));
beta = (kf*Am/(2*pi))/fm;
BW = 2*fm*(beta+1);
BW_bound = zeros(1, length(f));
for i=1:length(f)
if(abs(f(i))< (fc + BW/2) && abs(f(i))>(fc - BW/2))
BW_bound(i)=1;
end
end
subplot(313);
stem(f, S_FM_f/max(S_FM_f),'.k', 'linewidth', 1); hold on;
plot(f, BW_bound, 'linewidth', 1)
xlabel('Frequency (Hz)');
ylabel('Normalized |S_{FM}(f)|');
xlim([-200, 200])
title('Spectrum of FM Signal');