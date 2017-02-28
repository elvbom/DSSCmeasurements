konc = 1:1:20;
corn_am = [0 5 10 15 20 25];
am_51 = [NaN NaN NaN 15.53 10.56 18.05];

pmax15 = zeros(1, 20);
for i=1:20
    pmax15(i) = NaN;
end

pmax15(5) = 15.53;  %fel?: 20.41
pmax15(10) = 15.94;
pmax15(20) = 27.21;

pmax20 = pmax15;
pmax20(5) = 10.56;

pmax25 = pmax15;
pmax25(5) = 18.05;

figure
subplot(2, 1, 1)
plot(konc, pmax15, '*', konc, pmax20, 'x', konc, pmax25, 'o')
xlim([0 20])
ylim([0 30])
title('5:1 konc vs Pmax, 10:1 20:1 w/ 25')
subplot(2, 1, 2)
plot(corn_am, am_51)
title('Amount vs Pmax')