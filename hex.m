function big_A=hex(cycles)
n=cycles;

for i=1:n
    As=adjacencyL1(12*i-6);
    As(1,12*i-6)=1;
    As(12*i-6,1)=1;
    if i>1
        A=blkdiag(B,As);
    else
        A=As;
    end
    B=A;
end

big_A=A;
end