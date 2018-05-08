%Makes adjancency of grid with triangles
function bigA=adjacencyL2withCross(n)
nOnes=ones(n^2,1);   %nOnes is a vector with n ones
A=adjacencyL1(n);

I=diag(nOnes(1:n^2-n), n);
As=A;
vOnes=ones(n,1);
crossMat=zeros(n^2);
N=crossMat; %DELETE
for i=1:n-1
    As=blkdiag(As,A);
end

j=1;
for i=1:n^2-n-1
    if mod(i,n)==0
        vOnes(i,1)=0;
    end
    crossMat(i+n+1,i)=vOnes(j,1);
    N(i+n,i+1)=crossMat(i+n+1,i);%DELETE
    if mod(i,n)==0
        j=mod(i,n);
    end
    j=j+1;
end

bigA=As+I+I'+crossMat+crossMat'+N'+N;

end