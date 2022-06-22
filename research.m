clc;
clf;
clear;
A=importdata('DMS-DA2M-YFP_COC1_CNO-220523-101000_4158A-4159B-220523-132235_channel_2_-1-30.mat');
X=A.sig_405_RS;
Xt=X.';
Q=A.sig_472_RS;
Qt=Q.';
YData=A.timeFP_RS;
Yt=YData.';
Tp=plot(Yt,Xt,'-k');
hold on;
grid on;
Kt=plot(Yt,Qt,'-b');
legend([Tp Kt],{'GCAMP','Control'})
xlabel("time");
ylabel("signal");
K=max(Xt);
Kp=min(Xt);

int = trapz(Xt)
Int = trapz(Qt)
Plz = trapz(Xt,Qt)
diff= Int-int
figure
xy = categorical({'Control','GCAMP','GCAMP-control'});
ht=[int,Int,diff];
y = [2.6963e+07 ;3.2051e+07; 1.3994e+04];
bar(xy,ht)
ylabel("area")