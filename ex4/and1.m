% function to simulate and gate using neural network

function output=and1(x)
theta1=[-30 20 20];
x=[1 x];
output=sigmoid(x*theta1');
if output>0.9
    output=1;
else
    output=0;
end

end