% Implement poisson noise to the image

% read the image 
function poisson(image)
%Im =imread('lena.jpg');
Im = rgb2gray(Im);
Im = im2double(Im);
figure(1)
imshow(Im)
sizeIm =size(Im);
Im = Im(:);
b = zeros(size(Im));
indices = find(Im<50);
temp = ones(size(indices));
temp2 = -ones(size(indices));
index2 = (1:length(indices))';
if (~isempty(indices))
    g = exp(-Im(indices));
    while ~isempty(index2)
        temp2(index2)=temp2(index2)+1;
        temp(index2)=temp(index2).*rand(size(index2));
        index2 = index2(temp(index2)>g(index2));
    end
    b(indices)=temp2;
end
indices = find(Im>=50);

if(~isempty(indices))
    b(indices)= round(Im(indices)+sqrt(Im(indices))*randn(size(indices)));
end
b = reshape(b,sizeIm);
figure(2)
imshow(b)
end