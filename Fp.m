function fp=Fp(mp,R,w,theta,L)
           
         fp=(mp*R*(w*(2*pi/60))^2)*(cos(theta*(pi/180))+(R/L)*cos(2*theta*(pi/180)));
end