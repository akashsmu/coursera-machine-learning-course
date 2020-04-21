function cost=Jcost(theta)
 Xm = reshape(sin(1:32), 16, 2) / 5;
Xm=[ones(16,1) Xm];
lambda=0;
  ym = 1 + mod(1:16,4)';
Th1=reshape(theta(1:12),4,3);
Th2=reshape(theta(13:32),4,5);

first_activation=sigmoid(Xm*Th1');
first_activation=[ones(size(first_activation,1),1) first_activation];
second_activation=sigmoid(first_activation*Th2');

hypothesis=second_activation;

yout=zeros(16,4);

for i=1:16
    yout(i,ym(i))=1;
end

J=(-1/16)*sum(sum(yout.*log(hypothesis)+(1-yout).*log(1-hypothesis)));
regularization=sum(sum(Th1(:,2:end).^2))+sum(sum(Th2(:,2:end).^2));
cost=J+(lambda/(2*16))*regularization;
end

