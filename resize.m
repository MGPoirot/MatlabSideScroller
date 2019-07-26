close all; clear all; clc;
set(0,'DefaultFigureWindowStyle','docked');

root = 'fig'

x = [157 1088];
y = [ 69  803];

for i = 1:656
    A = imread(strcat('fig',num2str(i),'.png'));
    B = A(y(1):y(2),x(1):x(2),:);
    imwrite(B,strcat('fig_',num2str(i),'.png'))
end