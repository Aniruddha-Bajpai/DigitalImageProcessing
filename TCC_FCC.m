img = imread('example.jpg');
b1 = img(:,:,1); % red
b2 = img(:,:,2); % green
b3 = img(:,:,3); % blue
%subplot(2,2,1); imshow(img);
%subplot(2,2,2); imshow(b1);
%subplot(2,2,3); imshow(b2);
%subplot(2,2,4); imshow(b3);
tcc = cat(3,b1,b2,b3);
subplot(1,2,1); imshow(tcc);
fcc = cat(3,b3,b1,b3); 
subplot(1,2,2); imshow(fcc);
