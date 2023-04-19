
clc; clear; close all;
I = imread("Boat.tif"); %grayscale img
w = 25;
imshow(I);
title("main img");

I = imnoise(I,'salt & pepper', 0.90);

figure, imshow(I);
title("noise");

I = myfilter(I, w);
figure, imshow(I);
title("Improved img");
