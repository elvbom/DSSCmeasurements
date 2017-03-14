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
pmax(1) = 3.58;
pmax(2) = 4.849;
pmax(4) = 4.52;
pmax(5) = 3.58;
pmax(10) = 4.124;

pmax_meas = pmax;
pmax_meas(5) = 5.935;
pmax_meas(10) = 6.535;

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
am_51a = [NaN NaN NaN 0.9064 0.4225 0.7721];
am_51b = [NaN NaN NaN 0.621 0.4225 0.7721];

pmax15 = pmax;
pmax15(5) = 0.9064;  %fel?: 20.41
pmax15(10) = 0.4225;
pmax15(20) = 0.7721;

pmax20 = pmax15;
pmax20(5) = 0.6376;

pmax25 = pmax15;
pmax25(5) = 1.088;

pmax2 = p;
pmax2(5) = (pmax15(5)+pmax20(5)+pmax25(5))/3;
pmax2(10) = pmax15(10);
pmax2(20) = pmax15(20);

pmax3 = p;
pmax3(5) = 0.7221;
pmax3(10) = 0.6376;
pmax3(20) = 1.088;

%alla pmax-punkter
[p111, p112, p113, p114, p115, ...
    p211, p212, p213, p214, p215, ...
    p411, p412, p413, ...
    p511, p512, p513, p514, p515, p516, p517, p518, p519, p5110, p5111, ...
    p1011, p1012, p1013, p1014, p_avg, p_avg2, ...
    p2011, p2012, p2013, ...
    p_avg, p_avg2] = deal(p);

p111(1) = 0.533; %fel
p112(1) = 3.556; %fel?
p113(1) = 2.387;
p114(1) = 3.58;
p115(1) = 2.637;
p_avg(1) = (p113(1)+p114(1)+p115(1))/3;

p211(2) = 2.524;
p212(2) = 2.905;
p213(2) = 6.797; %fel?
p214(2) = 5.075; %fel?
p215(2) = 4.849;
p_avg(2) = (p211(2)+p212(2)+p215(2))/3;

p411(4) = 4.52;
p412(4) = 3.774;
p413(4) = 2.677;
p_avg(4) = (p411(4)+p412(4)+p413(4))/3;

p511(5) = 3.58; 
p512(5) = 5.935; %(fel?)
p513(5) = 0.621; %(15g overhead)
p514(5) = 0.05263; %(dito, fel)
p515(5) = 0.9064; %(dito, fel?)
p516(5) = 0.4225; %(20g overhead) - ngt fel m hela batchen?
p517(5) = 0.3529; %(dito)
p518(5) = 0.2996; %(dito)
p519(5) = 0.7221; %(25g overhead)
p5110(5) = 0.5716; %(dito)
p_avg(5) = p511(5);
p_avg2(5) = (p513(5)+p514(5)+p516(5)+p517(5)+p518(5)+p519(5)+p5110(5)+p5111(5))/8;

p1011(10) = 6.535; %(fel?)
p1012(10) = 4.124;
p1013(10) = 3.397;
p1014(10) = 0.6376; %(25g overhead)
p_avg(10) = (p1012(10)+p1013(10))/2;
p_avg2(10) = p1014(10);

p2011(20) = 1.088; %(25g overhead)
p2012(20) = 0.8162;
p2013(20) = 0.6646;
p_avg2(20) = (p2011(20)+p2012(20)+p2013(20))/3;

konc2 = [0:1:21];
pmax_led = -0.007626*konc2+4.1642;
pmax_am = -0.001019*corn_am+0.70253;
pmax_oh = 0.027343*konc2+0.4969;

pmax51a = -0.01343*[10:1:30]+0.96893;
pmax51b = 0.01511*[10:1:30]+0.303;
%lagga till en till om 20 ar fel?
%fast varfor skulle den vara det?
p_avg_fit = 1.9163*konc2+78.021;
p_avg2_fit = 0.59671*konc2+9.5975;

figure
% x = fel?
%alla pmax LED
suptitle('Purple corn: maximum power output from different solvent concentrations with LED measurements')
subplot(1, 2, 1)
plot(konc, p113, '*b', konc, p111, 'xr', konc, p112, 'xr', konc, p114, '*b', konc, p115, '*b', ...
    konc, p211, '*b', konc, p212, '*b', konc, p213, 'xr', konc, p214, 'xr', konc, p215, '*b', ...
    konc, p411, '*b', konc, p412, '*b', konc, p413, '*b', ...
    konc, p511, '*b', konc, p512, 'xr', ...
    konc, p1011, 'xr', konc, p1012, '*b', konc, p1013, '*b')
title('Maximum power output from LED measurements')
ylabel('Maximum power output Pmax [W]')
xlabel('Concentration x:1 [g]')
xlim([0 11])
ylim([0 8])
legend('indicates assumed correct measurement', 'indicates assumed incorrent measurement')

%hogsta pmax LED
subplot(1, 2, 2)
plot(konc, pmax, '*-', konc2, pmax_led)
title('Maximum power output per concentration from assumed correct LED measurements')
ylabel('Maximum power output Pmax [W]')
xlabel('Concentration x:1 [g]')
legend('Experimental data', 'Fitted curve')
ylim([0 8])
xlim([0 11])

am = 1:1:30;
pa = am;
for i = 1:30
    pa(i) = NaN;
end

[p513a, p514a, p515a, p516a, p517a, p518a, p519a, p5110a, p5111a] = deal(pa);
p513a(15) = p513(5);
p514a(15) = p514(5);
p515a(15) = p515(5);
p516a(20) = p516(5);
p517a(20) = p517(5);
p518a(20) = p518(5);
p519a(25) = p519(5);
p5110a(25) = p5110(5);
p5111a(25) = p5111(5);

%forts?tt h?r! 2 22.66?????
% pmax51 = pa;
% pmax51(15) = 22.66;
% pmax51(15) = 22.66;
% pmax51(15) = 22.66;
% pmax51_fitted = ;

figure
suptitle('Purple corn: maximum power output from overhead measurements of solvent concentration 5:1 using different quantities of corn')
%5:1 m = 15, r = 20 (suspect), c = 25
subplot(1, 2, 1)
plot(am, p513a, 'b*', am, p514a, 'rx', am, p516a, ...
    'ro', am, p519a, 'b*', am, p515a, 'rx', ...
     am, p517a, 'ro', am, p518a, 'ro', ...
     am, p5110a, 'b*', am, p5111a, 'b*')
title('Maximum power output from overhead measurements')
ylabel('Maximum power output Pmax [W]')
xlabel('Quantity of corn in solvent [g]')
xlim([10 30])
ylim([0 1.5])
legend('assumed incorrect measurement', 'assumed correct measurement', ...
   'assumed contaminated cup')

%hogsta pmax overhead, pmax2(5) ar avg
subplot(1, 2, 2)
plot(corn_am, am_51a, '*-', ... % corn_am, am_51b, '*-m', ...
    [10:1:30], pmax51a)%, 'c', [10:1:30], pmax51b, 'm')
title('Maximum power output per concentration from overhead measurements')
ylabel('Maximum power output Pmax [W]')
xlabel('Concentration x:1 [g]')
legend('Experimental data', 'Fitted curve')
xlim([10 30])
ylim([0 1.5])


figure
suptitle('Maximum power output from different concentrations of purple corn with overhead measurements')
%alla pmax overhead
subplot(1, 2, 1)
%5:1 m = 15, r = 20 (suspect), c = 25
plot(konc, p514, 'b*', konc, p513, 'rx', konc, p516, 'ro', konc, p515, 'rx', ...
      konc, p517, 'ro', konc, p518, 'ro', ...
    konc, p519, 'b*', konc, p5110, 'b*', konc, p5111, 'b*', ...
    konc, p1014, 'b*', ...
    konc, p2011, 'b*', konc, p2012, 'b*', konc, p2013, 'b*')
title('Maximum power output from overhead measurements')
ylabel('Maximum power output Pmax [W]')
xlabel('Concentration x:1 [g]')
xlim([0 21])
ylim([0 1.5])
legend('assumed correct measurement', 'assumed incorrect measurement', ...
    'from assumed contaminated cup')

%hogsta pmax overhead, pmax2(5) ar avg
subplot(1, 2, 2)
plot(konc, pmax3, '-*', konc2, pmax_oh)
title('Maximum power output per concentration from overhead measurements')
ylabel('Maximum power output Pmax [W]')
xlabel('Concentration x:1 [g]')
legend('Experimental data', 'Fitted curve')
xlim([0 21])
ylim([0 1.5])


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

