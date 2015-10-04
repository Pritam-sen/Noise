function Gaussian( )
  Im = imread('lena.jpg');
  Im =rgb2gray(Im);
  figure(1)
  imshow(Im)
  p3 = 0;%density
  p4 = 0.05;
  Im = im2double(Im);
  Im = Im + sqrt(p4)*randn(size(Im)) + p3;
  figure(2)
  imshow(Im)


end

