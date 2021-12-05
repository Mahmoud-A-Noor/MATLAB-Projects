fs = 8000; % sampling frequency
time = 5; % time of recording in seconds
x= audiorecorder(fs,16,1); % create audio file with sampling frequency = fs number of bits = 16 and channel number = 1
disp('start speaking') 
recordblocking(x,time); % stop recording x after time 
disp('End of recording')
y=getaudiodata(x); % get the recorded data
sound(y,fs) % play the audio file
audiowrite('path to save file\filename.wav',y,fs) % store the recorded data in wav file

%fm = 1000;                                        
%fs = 8000;                                        
%time = 2;                                         % use this when you don't have a mic it will make a tone instead  
%t = 0:1/fs:time;                                  
%y = sin(2*pi*fm*t);                                
%audiowrite('path to save file\filename.wav',y,fs)  

[y,fs] = audioread('path to save file\filename.wav'); % load the recorded data
sound(y,fs) % play the audio file
sound(10*y,fs) % increase sound volume
sound(0.2*y,fs) % decrease sound volume
sound(y,3*fs) % increase sound speed
sound(y,0.3*fs) % decrease sound speed

 
