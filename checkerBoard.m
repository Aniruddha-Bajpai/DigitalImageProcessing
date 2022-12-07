%i1 = imread("cameraman.tif");
i1 = zeros(256,256);
for i=1:256
    for j=1:256
        if(i==j)
            i1(i,j) = 0;
        elseif(mod(j,2) == 0 && mod(i,2) == 0)
            i1(i,j) = 0;
        elseif(mod(j,2)==0 || mod(i,2)==0)
            i1(i,j) = 1;
        end
    end
end
%i1 = cast(i1,"uint8");
imshow(i1);
