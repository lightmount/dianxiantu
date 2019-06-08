shujutiqu;

zhenshu = size(bone(1).num);
cnt = 1;

while cnt <= zhenshu(1,1)
    Larm = [
    -LarmBone(1).num(cnt,:);
    -LarmBone(2).num(cnt,:);
    -LarmBone(3).num(cnt,:);
    -LarmBone(4).num(cnt,:);
    -LarmBone(5).num(cnt,:);];
    plot3(Larm(:,1),Larm(:,2),Larm(:,3),'k-o');view(126,14);hold on;

    %ÓÒ±Û
    Rarm = [
    -RarmBone(1).num(cnt,:);
    -RarmBone(2).num(cnt,:);
    -RarmBone(3).num(cnt,:);
    -RarmBone(4).num(cnt,:);
    -RarmBone(5).num(cnt,:);];

    plot3(Rarm(:,1),Rarm(:,2),Rarm(:,3),'k-o');view(126,14);hold on;

    %ÖÐÐÄÏß
    Cent = [
    -CenterBone(1).num(cnt,:);
    -CenterBone(2).num(cnt,:);
    -CenterBone(3).num(cnt,:);
    -CenterBone(4).num(cnt,:);
    -CenterBone(5).num(cnt,:);
    -CenterBone(6).num(cnt,:);
    -CenterBone(7).num(cnt,:);];

    plot3(Cent(:,1),Cent(:,2),Cent(:,3),'k-o');view(126,14);hold on;

    %×óÍÈ
    Lleg = [
    -LlegBone(1).num(cnt,:);
    -LlegBone(2).num(cnt,:);
    -LlegBone(3).num(cnt,:);
    -LlegBone(4).num(cnt,:);];

    plot3(Lleg(:,1),Lleg(:,2),Lleg(:,3),'k-o');view(126,14);hold on;

    %ÓÒÍÈ
    Rleg = [
    -RlegBone(1).num(cnt,:);
    -RlegBone(2).num(cnt,:);
    -RlegBone(3).num(cnt,:);
    -RlegBone(4).num(cnt,:);];

    plot3(Rleg(:,1),Rleg(:,2),Rleg(:,3),'k-o');view(126,14);

    m(cnt)=getframe;
    hold off;
    cnt=cnt+1;
end

movie(m);

