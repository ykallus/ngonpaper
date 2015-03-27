if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="ngon-2";
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
pair K1=D("\mathbf{k}_1",rotate(360./7.)*K0,NE);
pair K2=D("\mathbf{k}_2",rotate(360./7.)*K1,N);
pair K3=D("\mathbf{k}_3",rotate(360./7.)*K2,NW);
pair K4=D("\mathbf{k}_4",rotate(360./7.)*K3,SW);
pair K5=D("\mathbf{k}_5",rotate(360./7.)*K4,S);
pair K6=D("\mathbf{k}_6",rotate(360./7.)*K5,SE);
path KK = D(K0--K1--K2--K3--K4--K5--K6--cycle,linewidth(1));

pair P1=(1., 0.);
pair P2=D("\mathbf{p}_2",(0.516460816041133, 0.806260150051493),N);
pair P3=D("\mathbf{p}_3",(-0.4340236179100764, 0.8062601500514931),NW);
pair P4=D("\mathbf{p}_4",(-0.9009688679024191, 0.),SW);
pair P5=D("\mathbf{p}_5",(-0.4340236179100764, -0.8062601500514931),SW);
pair P6=D("\mathbf{p}_6",(0.516460816041133, -0.806260150051493),S);
path PP = P2--P3--P5--P6--cycle;
fill(PP,lightgray);
D(PP);
D(P1--P4);
pair P4x = P4;

pair P1=(1., 0.);
pair P2=(0.36670303301673796, -0.8404413867659472);
pair P3=(-0.5837814009344715, -0.686832303311513);
pair P4=(-0.9009688679024191, 0.3072181669088686);
pair P5=(-0.31174490092936674, 0.9037741728702919);
pair P6=(0.6387395330218427, 0.7501650894158576);
path PP = P2--P3--P5--P6--cycle;
D(PP,dashed);
D(P1--P4,dashed);

MC ("y",D((P4x-(0.1,0))--(P4-(0.1,0)),Arrow),0.5,W);
