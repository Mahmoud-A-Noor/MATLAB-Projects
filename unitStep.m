function [x,n] = unitStep(n0,n1,n2)
n = [n1:n2]; 
x = [(n-n0) >= 0] ;

stem(n,x)