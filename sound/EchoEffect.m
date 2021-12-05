[x,fs] = audioread('path to save file\filename.wav'); % load the file and get sampling frequency
length = size(x,1); % get the length of the music file
a = 0.3; % set the attenuation factor
delay = 0.6;
d = delay*fs; % set the delay time in s
y = zeros(length,1); % y = zeros(size(x,1)) initialize the output sound
sound(x,fs);
for i=d+1:1:length
    y(i) = x(i)+a*x(i-d);
end

sound(y,fs) % play the echo