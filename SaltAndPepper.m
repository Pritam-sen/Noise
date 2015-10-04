function SaltAndPepper( )
  
  Im = imread('lena.jpg');
  Im =rgb2gray(Im);
  figure(1)
  imshow(Im)
  p3 = 0.05 %density
  x =rand(size(Im));
  d = find(x<p3/2);
  Im(d) = 0;
  d = find(x>=p3/2 & x<p3);
  Im(d) = 255;
  figure(2)
  imshow(Im)

end

