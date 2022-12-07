img = imread('cameraman.tif');
i2 = im2bw(i1);
sh = [-1,-2,-1;0,0,0;-1,2,-1];
sv = [-1,0,1;-2,0,2;-1,0,1];
[m,n] = size(i2); i3=zeros(n+2,n+2);
for i=2:m-1
    for j=2:n-1
        sum1 = 0; sum2 = 0;
        for k=1:3
            for l=1:3
                a1 = i2(i-2+k,j-2+l)*sh(k,l);
                sum1 = sum1+a1;
                a2 = i2(i-2+k,j-2+l)*sv(k,l);
                sum2 = sum2+a2;
            end
        end
        sum = abs(sum1)+abs(sum2);
        if(sum>3)
            i3(i,j) = sum;
        end
    end
end
subplot(1,2,1); imshow(i2);
subplot(1,2,2); imshow(i3);
