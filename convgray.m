function B = convgray(A, k)
[r,c] = size(A);
[m,n] = size(k);
h = rot90(k, 2);

centerX = floor((m+1)/2);
centerY = floor((n+1)/2);

Rep = zeros(r + m -1, c + n-1);
Rep(((1+centerX/2):(r+centerX/2)),((1+centerY/2):(c+centerY/2)))=A;
B = zeros(r , c);
for x = 1 : r
    for y = 1 : c
        for i = 1 : m
            for j = 1 : n
                q = x - 1;
                w = y -1;
                B(x, y) = B(x, y) + (Rep(i + q, j + w) * h(i, j));
            end
        end
    end
end