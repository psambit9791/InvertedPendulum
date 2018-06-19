im0 = imread('C:\Users\user\Desktop\Storage\Source\im0.png');
im0 = rgb2gray(im0);
im1 = imread('C:\Users\user\Desktop\Storage\Source\im1.png');
im1 = rgb2gray(im1);
disparity_range = [0, 320];
disparity_map = disparity(im0, im1, 'BlockSize', 11, 'DisparityRange', disparity_range);
figure
imshow(disparity_map, disparity_range);
title('Disparity Map')
colormap jet
