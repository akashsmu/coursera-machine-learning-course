function cost=somewhat(th) 
X = [ones(20,1) (exp(1) * sin(1:1:20))' (exp(0.5) * cos(1:1:20))'];
 y = sin(X(:,1) + X(:,2)) > 0;

 m=length(y); 
 value=X*th;
 hypo=sigmoid1(value);
 cost=(-1/m)*sum(y'*log(hypo)+(1-y)'*log(1-hypo));
end
 