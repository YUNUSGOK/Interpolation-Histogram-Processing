function [hist,c] = histcum(img)
  [row, col] = size(img);
  hist =zeros(1,256);
  for i = 1:row
    for j = 1:col
      index = img(i,j);
      hist(index+1) =hist(index+1)+1;
    end
  end
  N=row*col;
  p=zeros(1,256);
  s=zeros(1,256);
  c=zeros(1,256);
  r=zeros(1,256);

  p(1)=hist(1)/N;
  c(1)=p(1);


  for k=2:256
    p(k)=hist(k)/N;
    c(k)=c(k-1)+p(k);
  end

end
