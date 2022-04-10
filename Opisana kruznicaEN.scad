xA = 100;
yA = 100;
zA = 100;

xB= 50;
yB= 50;
zB= 50;

xC= -100;
yC= -100;
zC= -100;

xa= xA-(floor(xA));
ya= yA-(floor(yA));
za= zA-(floor(zA));
xb= xB-(floor(xB));
yb= yB-(floor(yB));
zb= zB-(floor(zB));
xc= xC-(floor(xC));
yc= yC-(floor(yC));
zc= zC-(floor(zC));

if(xa||ya||za||xb||yb||zb||xc||yc||zc!=0){  
echo("Bad input");
}
else{
//A([xA,yA,zA])
//B([xB,yB,zB])
//C([xC,yC,zC])

xT = ((xA+xB+xC)/3);
yT = ((yA+yB+yC)/3);
zT = ((zA+zB+zC)/3);

//T([xT,yT,zT])

xV = (xT-xA);
yV = (yT-yA);
zV = (zT-zA);

//V([xV,yV,zV])

x = sqrt(xV^2+yV^2+zV^2);
translate([xT,yT,zT])
sphere(r = x);

echo("The centre of the circle S is",xT,yT,zT);
echo("The radius is",x, "cm");
}