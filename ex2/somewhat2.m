costs=zeros(3,1);
for i=1:3
    e=0.0001;
    value=Theta;
    value_plus=value;
    value_minus=value;
    value_plus(i)=value_plus(i)+e;
    value_minus(i)=value_minus(i)-e;
    costs=(-somewhat(value_plus)+somewhat(value_minus))/(2*e);
end