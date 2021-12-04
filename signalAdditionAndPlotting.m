function [y,n] = signalAdditionAndPlotting(x1,n1,x2,n2)
% this function add two signals together
%   x1 => values of x axis of first signal
%   n1 => values of y axis of first signal
%   x2 => values of x axis of second signal
%   n2 => values of y axis of second signal
n = min(min(n1),min(n2)) : max(max(n1),max(n2)); % array of existence y axis values
y1 = zeros(1,length(n));
y2 = y1;
y1(find( (n>=min(n1) ) & ( n<=max(n1) ) )) = x1;
y2(find( (n>=min(n2) ) & ( n<=max(n2) ) )) = x2;
y = y1 + y2

subplot(2,2,1)
stem(n1,x1)
title('signal 1')
xlabel('n')
ylabel('x(n)')

subplot(2,2,2)
stem(n2,x2)
title('signal 2')
xlabel('n')
ylabel('x(n)')

subplot(2,2,[3 4])
stem(n,y)
title('x1 + x2')
xlabel('n')
ylabel('y(n)')

end

