clc;
shujutiqu;

Maxis = [0 0 0; 0 0 0 ;0 0 0 ;0 0 0 ;0 0 0];
zhenshu = size(bone(1).num);
cnt = 1;

while cnt <= zhenshu(1,1)
    Larm = [
    -LarmBone(1).num(cnt,:);
    -LarmBone(2).num(cnt,:);
    -LarmBone(3).num(cnt,:);
    -LarmBone(4).num(cnt,:);
    -LarmBone(5).num(cnt,:);];
    Maxis(1,:) = Maxsis(Larm);

    %右臂
    Rarm = [
    -RarmBone(1).num(cnt,:);
    -RarmBone(2).num(cnt,:);
    -RarmBone(3).num(cnt,:);
    -RarmBone(4).num(cnt,:);
    -RarmBone(5).num(cnt,:);];
    Maxis(2,:) = Maxsis(Rarm);

    %中心线
    Cent = [
    -CenterBone(1).num(cnt,:);
    -CenterBone(2).num(cnt,:);
    -CenterBone(3).num(cnt,:);
    -CenterBone(4).num(cnt,:);
    -CenterBone(5).num(cnt,:);
    -CenterBone(6).num(cnt,:);
    -CenterBone(7).num(cnt,:);];
    Maxis(3,:) = Maxsis(Cent);

    %左腿
    Lleg = [
    -LlegBone(1).num(cnt,:);
    -LlegBone(2).num(cnt,:);
    -LlegBone(3).num(cnt,:);
    -LlegBone(4).num(cnt,:);];
    Maxis(4,:) = Maxsis(Lleg);
    
    %右腿
    Rleg = [
    -RlegBone(1).num(cnt,:);
    -RlegBone(2).num(cnt,:);
    -RlegBone(3).num(cnt,:);
    -RlegBone(4).num(cnt,:);];
    Maxis(5,:) = Maxsis(Rleg);
    
    Temp = max(Maxis);
    Xmax = Temp(1,1);
    Ymax = Temp(1,2);
    Zmax = Temp(1,3);
    
    
    
    plot3(Larm(:,1),Larm(:,2),Larm(:,3),'k-o');
    view(126,14);xlim([-2,0]);ylim([-1,1.5]);zlim([-2,2]);hold on;
    plot3(Rarm(:,1),Rarm(:,2),Rarm(:,3),'k-o');
    view(126,14);xlim([-2,0]);ylim([-1,1.5]);zlim([-2,2]);hold on;
    plot3(Cent(:,1),Cent(:,2),Cent(:,3),'k-o');
    view(126,14);xlim([-2,0]);ylim([-1,1.5]);zlim([-2,2]);hold on;
    plot3(Lleg(:,1),Lleg(:,2),Lleg(:,3),'k-o');
    view(126,14);xlim([-2,0]);ylim([-1,1.5]);zlim([-2,2]);hold on;
    plot3(Rleg(:,1),Rleg(:,2),Rleg(:,3),'k-o');
    view(126,14);xlim([-2,0]);ylim([-1,1.5]);zlim([-2,2]);

    m(cnt)=getframe;
    hold off;
    cnt=cnt+1;
end

movie(m);

function [X] = Maxsis(NUM)
    %得到X、Y、Z坐标轴的数值最大值
    temp = abs(NUM);
    X = max(temp);
end


