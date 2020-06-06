
function  res = compareimg(A, B)
sz = size(A);

res = zeros(sz(1),sz(2));
for j = 1:sz(1)
    for i = 1:sz(2)
        rgb1 = A(j,i,:);
        rgb2 = B(j,i,:);
        res(j,i) = compareRGB(rgb1, rgb2);    end
end

end