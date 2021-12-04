function [y,n] = signalScalingAndPlotting(x,n,s)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
y = s*x;

subplot(2,2,1)
stem(n,x)
title('signal before scaling')
xlabel('n')
ylabel('x(n)')

subplot(2,2,2)
stem(n,y)
title('signal after scaling')
xlabel('n')
ylabel('y(n)')

end

