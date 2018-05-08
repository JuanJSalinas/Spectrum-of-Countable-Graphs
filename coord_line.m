
%Makes Adjacency of coordinate axes 
function A=coord_line(lines,nodesPerLine)
l=lines;
n=nodesPerLine;
Z=zeros( (n-1)*l+1 );

for i=2:l
    Z(i,1)=1;
end

for i=l+1 : l*(n-1)+1
    Z(i,i-l)=1;
end
A=Z+Z';

end





