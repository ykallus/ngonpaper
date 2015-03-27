if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="ngon-3";
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
pair K0=D("\mathbf{k}_0,\mathbf{p}_1",(1,0),E);
pair K1=D("\mathbf{k}_1",rotate(360./9.)*K0,NE);
pair K2=D("\mathbf{k}_2",rotate(360./9.)*K1,N);
pair K3=D("\mathbf{k}_3",rotate(360./9.)*K2,NW);
pair K4=D("\mathbf{k}_4",rotate(360./9.)*K3,W);
pair K5=D("\mathbf{k}_5",rotate(360./9.)*K4,W);
pair K6=D("\mathbf{k}_6",rotate(360./9.)*K5,SW);
pair K7=D("\mathbf{k}_7",rotate(360./9.)*K6,S);
pair K8=D("\mathbf{k}_8",rotate(360./9.)*K7,SE);
path KK = D(K0--K1--K2--K3--K4--K5--K6--K7--K8--cycle,linewidth(1));

pair P1=(1., 0.);
pair P2=D("\mathbf{p}_6",(0.3706844903100875, -0.87104878486755),SE);
pair P3=D("\mathbf{p}_5",(-0.5991618200828668, -0.7478489484525013),SW);
pair P4=D("\mathbf{p}_4",(-0.9396926207859084, 0.24639967283009717),NE);
pair P5=D("\mathbf{p}_3",(-0.4058322193092865, 0.882629724233649),N);
pair P6=D("\mathbf{p}_2",(0.5640140910836678, 0.7594298878186004),NE);
path PP = P2--P3--P5--P6--cycle;
fill(PP,lightgray);
D(PP);
D(P1--P4);
pair P4x = P4;

pair P1=(1., 0.);
pair P2=(0.4403241757329789, 0.8308422937423627);
pair P3=(-0.5295221346599754, 0.8308422937423627);
pair P4=(-0.9396926207859084, 0.);
pair P5=(-0.5295221346599754, -0.8308422937423627);
pair P6=(0.4403241757329789, -0.8308422937423627);
path PP = P2--P3--P5--P6--cycle;
D(PP,dashed);
D(P1--P4,dashed);

MC ("y",D((P4-(0.1,0))--(P4x-(0.1,0)),Arrow),0.5,W);
