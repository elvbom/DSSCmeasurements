close all

konc = 1:1:20;

%konc vs Pmax
p = zeros(1, 20);
for i=1:20
    p(i) = NaN;
end

%Pmax med LED
%1:1 : 89.49, 
%2:1 : 121.2
%4:1 : 113
%5:1 : 89.51/148.4
%10:1 : 103.1/163.4

%1&2
pmax = p;
pmax(1) = 89.49;
pmax(2) = 121.2;
pmax(4) = 113;
pmax(5) = 89.51;
pmax(10) = 103.1;

pmax_meas = pmax;
pmax_meas(5) = 148.4;
pmax_meas(10) = 163.4;

%Pmax med overhead
%5:1 :  15g     20g     25g
       %15.53   10.56   18.05
%10:1 : 15.94
%20:1 : 27.21

%alla pmax
%(1+2 default)
%1:1
    %13.32 fel
    %88.89 (fel?)
    %59.66
    %65.92
    %89.49
%2:1
    %63.1
    %72.62
    %126.9 (fel?)
    %169.9 (fel?)
    %121.2
%4:1
    %113
    %94.34
    %66.92
%5:1
    %89.51 
    %148.4 (fel?)
    %1.246 (15g overhead)
    %15.53 (dito)
    %22.66 (dito, fel?)
    %10.56 (20g overhead)
    %8.822 (dito)
    %7.489 (dito)
    %14.29 (25g overhead)
    %18.05 (dito)
    %22.66 (dito)
%10:1
    %163.4 (fel?)
    %103.1
    %84.91
    %15.94 (25g overhead)
%20:1 (25g overhead)
    %27.21
    %20.4
    %16.61

%3
corn_am = [0 5 10 15 20 25]; %alla 5:1
am_51 = [NaN NaN NaN 15.53 10.56 18.05];

pmax15 = pmax;
pmax15(5) = 15.53;  %fel?: 20.41
pmax15(10) = 15.94;
pmax15(20) = 27.21;

pmax20 = pmax15;
pmax20(5) = 10.56;

pmax25 = pmax15;
pmax25(5) = 18.05;

pmax2 = p;
pmax2(5) = (pmax15(5)+pmax20(5)+pmax25(5))/3;
pmax2(10) = pmax15(10);
pmax2(20) = pmax15(20);

%alla pmax-punkter
[p111, p112, p113, p114, p115, ...
    p211, p212, p213, p214, p215, ...
    p411, p412, p413, ...
    p511, p512, p513, p514, p515, p516, p517, p518, p519, p5110, p5111, ...
    p1011, p1012, p1013, p1014, p_avg, p_avg2, ...
    p2011, p2012, p2013, ...
    p_avg, p_avg2] = deal(p);

p111(1) = 13.32; %fel
p112(1) = 88.89; %fel?
p113(1) = 59.66;
p114(1) = 65.92;
p115(1) = 89.49;
p_avg(1) = (p113(1)+p114(1)+p115(1))/3;

p211(2) = 63.1;
p212(2) = 72.62;
p213(2) = 126.9; %fel?
p214(2) = 169.9; %fel?
p215(2) = 121.2;
p_avg(2) = (p211(2)+p212(2)+p215(2))/3;

p411(4) = 113;
p412(4) = 94.34;
p413(4) = 66.92;
p_avg(4) = (p411(4)+p412(4)+p413(4))/3;

p511(5) = 89.51; 
p512(5) = 148.4; %(fel?)
p513(5) = 1.246; %(15g overhead)
p514(5) = 15.53; %(dito)
p515(5) = 22.66; %(dito, fel?)
p516(5) = 10.56; %(20g overhead) - ngt fel m hela batchen?
p517(5) = 8.822; %(dito)
p518(5) = 7.489; %(dito)
p519(5) = 14.29; %(25g overhead)
p5110(5) = 18.05; %(dito)
p5111(5) = 22.66; %(dito)
p_avg(5) = p511(5);
p_avg2(5) = (p513(5)+p514(5)+p516(5)+p517(5)+p518(5)+p519(5)+p5110(5)+p5111(5))/8;

p1011(10) = 163.4; %(fel?)
p1012(10) = 103.1;
p1013(10) = 84.91;
p1014(10) = 15.94; %(25g overhead)
p_avg(10) = (p1012(10)+p1013(10))/2;
p_avg2(10) = p1014(10);

p2011(20) = 27.21; %(25g overhead)
p2012(20) = 20.4;
p2013(20) = 16.61;
p_avg2(20) = (p2011(20)+p2012(20)+p2013(20))/3;

konc2 = [0:1:20];
pmax_led = -0.18862*konc2+104.09;
pmax_oh = 0.8751*konc2+9.0783;
%lagga till en till om 20 ar fel?
%fast varfor skulle den vara det?
p_avg_fit = 1.9163*konc2+78.021;
p_avg2_fit = 0.59671*konc2+9.5975;

figure
% x = fel?
%alla pmax LED
subplot(2, 2, 1)
plot(konc, p111, 'x', konc, p112, 'x', konc, p113, '*', konc, p114, '*', konc, p115, '*', ...
    konc, p211, '*', konc, p212, '*', konc, p213, 'x', konc, p214, 'x', konc, p215, '*', ...
    konc, p411, '*', konc, p412, '*', konc, p413, '*', ...
    konc, p511, '*', konc, p512, 'x', ...
    konc, p1011, 'x', konc, p1012, '*', konc, p1013, '*')
title('All Pmax LED')
%alla pmax overhead
subplot(2, 2, 2)
%5:1 m = 15, r = 20 (suspect), c = 25
plot(konc, p513, 'mx', konc, p514, 'm*', konc, p515, 'mx', ...
    konc, p516, 'ro', konc, p517, 'ro', konc, p518, 'ro', ...
    konc, p519, 'c*', konc, p5110, 'c*', konc, p5111, 'c*', ...
    konc, p1014, '*', ...
    konc, p2011, '*', konc, p2012, '*', konc, p2013, '*')
title('All Pmax overhead')
xlim([0 20])
%hogsta pmax LED
subplot(2, 2, 3)
plot(konc, pmax, '*-', konc2, pmax_led)
title('Max Pmax LED')
ylim([0 200])
%hogsta pmax overhead, pmax2(5) ar avg
subplot(2, 2, 4)
plot(konc, pmax2, '-*', konc2, pmax_oh)
title('Max Pmax overhead')
xlim([0 20])
ylim([0 30])
%averages - inte jattebra satt att mata men ger ide
%LED
% subplot(3, 2, 5)
% plot(konc, p_avg, '-*', konc2, p_avg_fit)
% title('All Pmax LED average OBS ej bra matt')
% ylim([0 200])
% %oh
% subplot(3, 2, 6)
% plot(konc, p_avg2, '-*', konc2, p_avg2_fit)
% title('All Pmax overhead average')
% xlim([0 20])
% ylim([0 30])

% figure
% %forsta matningarna majs optimal konc
% subplot(3, 1, 1)
% plot(konc, pmax, '*-', konc, pmax_meas, '*-');
% title('1st: konc vs Pmax purple corn')
% subplot(3, 1, 2)
% plot(konc, pmax15, '*', konc, pmax20, 'x', konc, pmax25, 'o')
% xlim([0 20])
% ylim([0 30])
% title('5:1 konc vs Pmax, 10:1 20:1 w/ 25')
% subplot(3, 1, 3)
% plot(corn_am, am_51)
% title('Amount vs Pmax')

