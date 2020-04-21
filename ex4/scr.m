costs=zeros(32,1);
format long;
for i=1:32
    e=1.0000e-03;
    Th=t;
    Th_plus=Th;
    Th_minus=Th;
    Th_plus(i)=Th_plus(i)+e;
    Th_minus(i)=Th_minus(i)-e;
    inter1=Jcost(Th_plus);
    inter2=Jcost(Th_minus);
    difference=(inter1-inter2)/(2*e);
    display("------------------------" + i);
    costs(i)=(sum(difference));
end


