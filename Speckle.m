function Speckle()

  Im = imread('lena.jpg');
  Im =rgb2gray(Im);
  figure(1)
  imshow(Im)
  p3 = 0.05 %variance
  Im = im2double(Im);
  b = Im + sqrt(12*p3)*Im.*(rand(size(Im))-.5);
  figure(2)
  imshow(b)


end

