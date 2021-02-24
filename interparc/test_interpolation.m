%
close all; clear all; clc;

% Example:
% Interpolate a set of unequally spaced points around
% the perimeter of a unit circle, generating equally
% spaced points around the perimeter.

% theta = sort(rand(15,1))*2*pi;
% theta(end+1) = theta(1);
% px = cos(theta);
% py = sin(theta);

px = randi([0 10],1,10)%ones(1,10)
py = randi([0 10],1,10)%1:10


% interpolate using parametric splines
pt = interparc(50,px,py,'spline');

% Plot the result
plot(px,py,'r*',pt(:,1),pt(:,2),'b-o')
% axis([-1.1 1.1 -1.1 1.1])
axis equal
grid on
xlabel X
ylabel Y
title 'Points in blue are uniform in arclength around the circle'
