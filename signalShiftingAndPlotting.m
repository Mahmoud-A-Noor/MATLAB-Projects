function [x,n] = signalShiftingAndPlotting(x,n,k)
% implements y(n) = x(n-k)
% -------------------------
% k is the shifting amount
subplot(1,2,1);
stem(n,x);
axis([-6 6 -2 5]);
n = n+k;   % time shifting by k amount
y = x;
subplot(1,2,2);
stem(n,y);
axis([-6 7 -2 5])

end

