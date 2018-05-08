function big_A=latter(lines,nodesPerLine)
n=nodesPerLine;
l=lines;
A=adjacencyL1(n);
As=A;

for i=1:l
    if i<l
        As=blkdiag(As,A);
        for j=1:n
            As(j,i*n+j)=1;
            As(i*n+j,j)=1; 
        end
    end
    
    
end

big_A=As;
end