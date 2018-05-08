%Choose n>5
function Ls=adjacencyLSN(length,dimension)
s=dimension;
n=length;

nOnes=ones(n^2,1);   
A=diag(nOnes(1:n-1), -1) + diag(nOnes(1:n-1), 1);  

if s>1
    for j=2:s
    nNewOnes=ones(n^j,1);
    I=diag(nNewOnes(1:n^j - n^(j-1)), n^(j-1));
    As=A;
    for k=1:n-1
        As=blkdiag(As,A);
    end
    A=As+I+I';
    end
end

    Ls=A;
end



A = full(bucky);
D = diag(sum(A));
L = D - A;
[v, e] = eig(L);
gplot(A, v(:, [2 3]))
hold on;
gplot(A,v(:, [2 3]), 'o')







