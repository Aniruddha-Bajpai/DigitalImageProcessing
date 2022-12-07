img = imread('cameraman.tif');
newimg = img;
for i=1:256
    for j=1:256
        if(newimg(i,j)<10||newimg(i,j)>20)
            newimg(i,j)=255;
        end
    end
end
subplot(1,2,1);
imshow(img);
subplot(1,2,2);
imshow(newimg);