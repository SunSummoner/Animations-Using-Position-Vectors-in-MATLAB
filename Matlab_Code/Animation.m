clear all;
clc;

%% Step 1: Generate Data
A=[600000;400000;500000];
B=[0.85 0.04 0.10;0.05 0.88 0.07;0.1 0.08 0.83];
C=A;

t=linspace(1,100, 100);
for i=1:t
    C=B*C;
    x(i,1)=C(1,1);
    y(i,1)=C(2,1);
    z(i,1)=C(3,1);
end
figure
draw(x,y,z)

