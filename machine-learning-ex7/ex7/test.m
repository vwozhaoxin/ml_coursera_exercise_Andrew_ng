for i =1:K
  k=0;
  for j= 1:m
    if idx(j)=i
      k+=1;
      centroids(i,:) += X(j,:);  
  end
  centroids(i,:) /=k;
end
centroids = centroids(:,:)



 if k=m
    centroids(i,:)=sum(X.*idx,axis=1);
  else