A = 0.9; % Amplitude
time = input('input time of sinusoidal signal = '); % input time
fm = input('input frequency of the sinusoidal signal = '); % input frequency
fs = 44100; % number of samples per wave
t = 0:1/fs:time; % 0 => start | 1/fs => step | time => end
y = sin(2*pi*fm*t);
plot(t,y);
xlabel('Time')
ylabel('Amplitude')
title('Sinusoidal Signal')
sound(y,fs); % play signal sound