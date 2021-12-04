function [y,n] = signalFoldingAndPlotting(x,n)
% implements y(n) = x(-n)
% -----------------------
subplot(1,2,1);
stem(n,x);
title('Signal before folding/reflection');
xlabel('n');
ylabel('x(n)');
axis([-4 5 0 5]);

y = fliplr(x); % Flip array in left/right direction
n = -fliplr(n);

subplot(1,2,2);
stem(n,y);
title('Signal after folding/reflection');
xlabel('n');
ylabel('y(n)');
axis([-4 5 0 5]);

end

