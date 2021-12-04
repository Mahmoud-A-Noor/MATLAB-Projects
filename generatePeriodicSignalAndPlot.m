function [n,x] = generatePeriodicSignalAndPlot(n,x,p)
% this function generate periodic signal of p times 
%   n => start & end position on x axis
%   x => our periodic signal
%   p => number of times we want the periodic signal to be repeated 
x = x' * ones(1, p);
x = x(:);
x = x';
stem(n,x)
xlabel('n')
ylabel('x(n)')
end

