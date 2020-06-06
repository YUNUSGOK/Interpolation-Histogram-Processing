function map = mapped(img1 ,img2)
map = zeros(256,1,'uint8');
[~,c1] = histcum(img1); 
[~,c2] = histcum(img2); 

for i = 1 : 256
  [~,ind] = min(abs(c1(i) - c2));
  map(i) = ind-1;
end

end

  
