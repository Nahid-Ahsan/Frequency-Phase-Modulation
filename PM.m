clear all; close all; clc;
fs = 8000; % Sampling Frequency
fc = 100; % Carrier Frequency
Ac = 1; % Carrier Amplitude
fm = 5; % Message Frequency
Am = 1; % Message Amplitude
kp = 20; % Modulation Coefficient
%% Time Domain Analysis
t = 0:1/fs:1;
M = Am*cos(2*pi*fm*t); % Message Signal
C = Ac*cos(2*pi*fc*t); % Carrier Signal
% FM Signal
s_PM = Ac*cos(2*pi*fc*t + kp*M);
figure(1)
subplot(311);
plot(t, M); ylabel('m(t)');
title('Message Signal');
subplot(312);
plot(t, C); ylabel('c(t)');
title('Carrier Signal');
subplot(313);
plot(t, s_PM, t, M); ylabel('s_{PM}(t)');
title('PM Signal');
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
S_PM_f = fftshift(abs(fft(s_PM)));
% Finding the maxima of dm(t)/dt
M_diff = zeros(1, length(t));
for i=2:length(t)
M_diff(i) = fs*(M(i-1)-M(i));
end
Ap = max(abs(M_diff));
beta = (kp*Ap/(2*pi))/fm;
BW = 2*fm*(beta+1);
BW_bound = zeros(1, length(f));
for i=1:length(f)
if(abs(f(i))< (fc + BW/2) && abs(f(i))>(fc - BW/2))
BW_bound(i)=1;
end
end
subplot(313);
stem(f, S_PM_f/max(S_PM_f),'.k', 'linewidth', 1); hold on;
plot(f, BW_bound, 'linewidth', 1)
xlabel('Frequency (Hz)');
ylabel('Normalized |S_{PM}(f)|');
xlim([-BW-50, BW+50])
title('Spectrum of PM Signal');