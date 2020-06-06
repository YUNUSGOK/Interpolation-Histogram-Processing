function res = the1_convolution(img,h)

[row, col,~] = size(img);

r = convgray(img(:,:,1),h);
g = convgray(img(:,:,2),h);
b = convgray(img(:,:,3),h);

res = zeros(row,col,3);

res(:,:,1) =   (r);
res(:,:,2) =   (g);
res(:,:,3) =   (b);


res = normalize(res,'range');

end
