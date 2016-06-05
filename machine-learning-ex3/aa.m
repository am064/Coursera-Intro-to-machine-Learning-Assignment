y1=zeros(num_labels,m);
for i=1:m
  for j=1:num_labels
    if y(i)==j
    y1(j,i)=1;
    end
  end
end

y2=y1';

initial_theta=zeros(n+1,1);
options = optimset('GradObj', 'on', 'MaxIter', 50);

for p=1:num_labels 
[theta(p,:)]=fminccg(@lrCostFunction(X,y2(:,p),lambda),initial_theta,options);
end

all_theta=theta;
