img = imread('cameraman.tif');
i1 = zeros(258,258);
i1(2:257,2:257) = img;
i2 = zeros(256,256);
i2 = double(i2);
f = [0,-1,0;-1,4,-1;0,-1,0];
for i=2:256
    for j=2:256
        sum = 0;
        for k=1:3
            for l=1:3
                sum = sum+i1(i-2+k,j-2+l)*f(k,l);
            end
        end
        i3(i,j) = sum;
    end
end
i3 = cast(i3,'uint8');
subplot(1,2,1); imshow(i1);
subplot(1,2,2); imshow(i3);