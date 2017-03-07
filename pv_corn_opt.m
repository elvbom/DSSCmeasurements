close all
clear

%corn maskingjorda
res = [999999 899999 799999 699999 599999 499999 399999 299999 199999 ...
    99999 89999 79999 69999 59999 49999 39999 29999 19999 ...
    9999 8999 7999 6999 5999 4999 3999 2999 1999 ...
    999 899 799 699 599 499 399 299 199 ...
    99 89 79 69 59 49 39 29 19 9 8 7 6 5 4 3 2 1 0];

a = 0.5*1; %area solar cell

oc1_V = 0.001.*[454 454 454 454 453 453 452 451 451 450 ...
    450 448 450 448 449 449 448 445 442 ...
    440 437 433 433 427 424 417 405 348 ...
    324 302 277 245 209 171 131 88.3 44.6 ...
    39.3 34.6 30.3 25.8 21.2 16.9 12.6 8.2 3.9 ...
    3.4 3.0 2.6 2.1 1.7 1.3 0.9 0.5 0];
oc1_I = oc1_V./res./a;
oc1_P = oc1_V.*oc1_I;

oc2_V = 0.001.*[532 530 529 528 527 526 525 524 523 522 ...
    520 519 518 517 516 515 513 511 505 ...
    502 500 497 494 490 483 473 451 341 ...
    310 277 243 209 174 139 104 70.9 35.4 ...
    31.8 28.3 24.7 21.1 17.5 14.0 10.5 6.8 3.3 ...
    2.9 2.6 2.2 1.8 1.5 1.1 0.8 0.4 0];
oc2_I = oc2_V./res./a;
oc2_P = oc2_V.*oc2_I;
 
%x-y coordinates pmax
pmax1 = [6.967e-4 0.348];
pmax2 = [6.827e-4 0.341];

ffx1 = [pmax1(1) pmax1(1) 0];
ffy1 = [0 pmax1(2) pmax1(2)];
ffx2 = [pmax2(1) pmax2(1) 0];
ffy2 = [0 pmax2(2) pmax2(2)];

figure
subplot(2, 1, 1)
plot(oc1_I, oc1_V, ffx1, ffy1)
title('20:1 corn: Current density vs voltage and fill factor')
xlabel('Current density [A/cm^2]')
ylabel('Voltage [V]')
legend('Current-voltage', 'Fill factor')
axis([0 1e-3 0 0.7])
subplot(2, 1, 2)
plot(oc1_I, oc1_P)
title('20:1 corn: current density vs efficiency')
xlabel('Current density [A/cm^2]')
ylabel('Efficiency')
axis([0 1e-3 0 2.5e-4])

figure
subplot(2, 1, 1)
plot(oc2_I, oc2_V, ffx2, ffy2)
title('20:1 corn: Current density vs voltage and fill factor')
xlabel('Current density [A/cm^2]')
ylabel('Voltage [V]')
legend('Current-voltage', 'Fill factor')
axis([0 1e-3 0 0.7])
subplot(2, 1, 2)
plot(oc2_I, oc2_P)
title('20:1 corn: current density vs efficiency')
xlabel('Current density [A/cm^2]')
ylabel('Efficiency')
axis([0 1e-3 0 2.5e-4])