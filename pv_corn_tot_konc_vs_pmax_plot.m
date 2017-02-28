konc = 1:1:20;

%konc vs Pmax
pmax = zeros(1, 20);
for i=1:20
    pmax(i) = NaN;
end

%med LED
%1:1 : 89.49, 
%2:1 : 121.2
%4:1 : 113
%5:1 : 89.51/148.4
%10:1 : 103.1/163.4

%med overhead
%5:1 :  15g     20g     25g
%10:1 : 
%20:1 : 

%2
pmax(1) = 89.49;
pmax(2) = 121.2;
pmax(4) = 113;
pmax(5) = 89.51;
pmax(10) = 103.1;

pmax_meas = pmax;
pmax_meas(5) = 148.4;
pmax_meas(10) = 163.4;

%3
corn_am = [0 5 10 15 20 25];
am_51 = [NaN NaN NaN 15.53 10.56 18.05];

pmax15(5) = 15.53;  %fel?: 20.41
pmax15(10) = 15.94;
pmax15(20) = 27.21;

pmax20 = pmax15;
pmax20(5) = 10.56;

pmax25 = pmax15;
pmax25(5) = 18.05;

figure
%forsta matningarna majs optimal konc
subplot(3, 1, 1)
plot(konc, pmax, '*-', konc, pmax_meas, '*-');
title('1st: konc vs Pmax purple corn')

subplot(3, 1, 2)
plot(konc, pmax15, '*', konc, pmax20, 'x', konc, pmax25, 'o')
xlim([0 20])
ylim([0 30])
title('5:1 konc vs Pmax, 10:1 20:1 w/ 25')
subplot(2, 1, 2)
plot(corn_am, am_51)
title('Amount vs Pmax')