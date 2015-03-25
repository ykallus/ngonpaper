if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="ngon-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import cseblack;
import olympiad;
usepackage("amssymb");
size(250);
pair K0=(1,0);
pair K1=rotate(360./5.)*K0;
pair K2=rotate(360./5.)*K1;
pair K3=rotate(360./5.)*K2;
pair K4=rotate(360./5.)*K3;
path KK = D(K0--K1--K2--K3--K4--cycle,linewidth(1));

real u = cos(pi/5.);
pair P1=K0;
pair P2=(K0+3.*K1)/4.;
pair P3=((3.-2.*u)*K1+(1.+2.*u)*K2)/4.;
pair P4=(2.*K2+2.*K3)/4.;
pair P5=((3.-2.*u)*K4+(1.+2.*u)*K3)/4.;
pair P6=(K0+3.*K4)/4.;
path PP = P2--P3--P5--P6--cycle;
fill(PP,lightgray);
D(PP);
D(P1--P4);

pair V2 = 1.*(K1-P2);
pair V3 = (1./sqrt(5.))*(K2-P3);
pair V4 = 1.*(K3-P4);
pair V5 = (sqrt(5.)-2.)*(K4-P5);
pair V6 = (1./3.)*(K0-P6);
real t = -0.6;
path PP = D((P2+t*V2)--(P3+t*V3)--(P5+t*V5)--(P6+t*V6)--cycle,dashed);
D( P1--(P4+t*V4),dashed);

MC ("y",D((P4-(0.1,0))--(P4+t*V4-(0.1,0)),Arrow),0.5,W);
