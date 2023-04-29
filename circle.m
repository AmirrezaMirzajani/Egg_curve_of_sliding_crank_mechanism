clc;
close all;

mc=3.5257;
R=0.0762;
w=1800;
r=mc*R*(w*(2*pi/60))^2;
xc=0;
yc=0;
theta=0:0.02:2*pi;
x=xc+r*cos(theta);
y=yc+r*sin(theta);
plot(x,y,'r--');
grid on;
axis equal
hold on
mp=4.331;
L=0.286;
thetaa=0:0.02:360;
xx=mc*R*(w*(2*pi/60))^2*cos(thetaa*(pi/180))+...
    (mp*R*(w*(2*pi/60))^2)*(cos(thetaa*(pi/180))+(R/L)*cos(2*thetaa*(pi/180)));
yy=mc*R*(w*(2*pi/60))^2*sin(thetaa*(pi/180));
plot(xx,yy);
grid on;
axis equal
hold on
a=(2/3);
thetaaa=0:0.02:360;
xxx=mc*R*(w*(2*pi/60))^2*cos(thetaaa*(pi/180))+...
    (mp*R*(w*(2*pi/60))^2)*(cos(thetaaa*(pi/180))+(R/L)*cos(2*thetaaa*(pi/180)))...
    -mc*R*(w*(2*pi/60))^2*cos(thetaaa*(pi/180))-a*(mp*R*(w*(2*pi/60))^2)*cos(thetaaa*(pi/180));
yyy=mc*R*(w*(2*pi/60))^2*sin(thetaaa*(pi/180))-a*(mp*R*(w*(2*pi/60))^2)*sin(thetaaa*(pi/180));
plot(xxx,yyy);
grid on;

