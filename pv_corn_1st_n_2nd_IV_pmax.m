close all

% %I-V 1st+2nd corn
% figure
% suptitle('Purple corn current-voltage curve with potential measurement errors')
% subplot(5, 1, 1)
% plot(m113_I, m113_V, mX1_I, mX1_V, mX2_I, mX2_V, mXs1_I, mXs1_V, mXs2_I, mXs2_V, '-*')
% title('Concentration 1:1')
% xlim([0 2.5])
% ylim([0 700])
% ylabel('Voltage [mV]')
% xlabel('Current density [mA/cm^2]')
% legend('B1', 'B2', 'B2', 'B3', 'B3')
% subplot(5, 1, 2)
% plot(m212_I, m212_V, mY1_I, mY1_V, '-*', mY2_I, mY2_V, mYs1_I, mYs1_V, mYs2_I, mYs2_V, '-*')
% title('Concentration 2:1')
% xlim([0 2.5])
% ylim([0 700])
% ylabel('Voltage [mV]')
% xlabel('Current density [mA/cm^2]')
% legend('B1', 'B2', 'B2', 'B3', 'B3')
% subplot(5, 1, 3)
% plot(m412_I, m412_V, mZ1_I, mZ1_V, mZ2_I, mZ2_V) 
% title('Concentration 4:1')
% xlim([0 2.5])
% ylim([0 700])
% ylabel('Voltage [mV]')
% xlabel('Current density [mA/cm^2]')
% legend('B1', 'B2', 'B2')
% subplot(5, 1, 4)
% plot(m511_I, m511_V, '-*', m512_I, m512_V) %en f?r d?lig
% title('Concentration 5:1')
% xlim([0 2.5])
% ylim([0 700])
% ylabel('Voltage [mV]')
% xlabel('Current density [mA/cm^2]')
% legend('B1', 'B1')
% subplot(5, 1, 5)
% plot(m1011_I, m1011_V, m1012_I, m1012_V, m1013_I, m1013_V, '-*')
% title('Concentration 10:1')
% xlim([0 2.5])
% ylim([0 700])
% ylabel('Voltage [mV]')
% xlabel('Current density [mA/cm^2]')
% legend('B1', 'B1', 'B1')
% 
% %i-v without measurement errors
% figure
% suptitle('Purple corn current-voltage curve without potential measurement errors')
% subplot(5, 1, 1)
% plot(m113_I, m113_V, mX1_I, mX1_V, mX2_I, mX2_V, mXs1_I, mXs1_V)
% title('Concentration 1:1')
% xlim([0 2.5])
% ylim([0 700])
% ylabel('Voltage [mV]')
% xlabel('Current density [mA/cm^2]')
% legend('B1', 'B2', 'B2', 'B3')
% subplot(5, 1, 2)
% plot(m212_I, m212_V, mY2_I, mY2_V, mYs1_I, mYs1_V)
% title('Concentration 2:1')
% xlim([0 2.5])
% ylim([0 700])
% ylabel('Voltage [mV]')
% xlabel('Current density [mA/cm^2]')
% legend('B1', 'B2', 'B3')
% subplot(5, 1, 3)
% plot(m412_I, m412_V, mZ1_I, mZ1_V, mZ2_I, mZ2_V) 
% title('Concentration 4:1')
% xlim([0 2.5])
% ylim([0 700])
% ylabel('Voltage [mV]')
% xlabel('Current density [mA/cm^2]')
% legend('B1', 'B2', 'B2')
% subplot(5, 1, 4)
% plot(m512_I, m512_V) %en f?r d?lig
% title('Concentration 5:1')
% xlim([0 2.5])
% ylim([0 700])
% ylabel('Voltage [mV]')
% xlabel('Current density [mA/cm^2]')
% legend('B1')
% subplot(5, 1, 5)
% plot(m1011_I, m1011_V, m1012_I, m1012_V)
% title('Concentration 10:1')
% xlim([0 2.5])
% ylim([0 700])
% ylabel('Voltage [mV]')
% xlabel('Current density [mA/cm^2]')
% legend('B1', 'B1')

%m?tfel p? nr 29 (-30) motsvarar 899 Ohm
%efficiency w/ measurement errors
figure
suptitle('Purple corn current-power curve with potential measurement errors')
subplot(5, 1, 1)
plot(m113_I, m113_P, mX1_I, mX1_P, mX2_I, mX2_P, mXs1_I, mXs1_P, mXs2_I, mXs2_P, '-*', ...
    [0 2.5], [358 358], '-.k')
title('P 1st + 2nd maize I-Pmax w/ pot error curves, 1:1')
xlim([0 2.5])
ylim([0 800])
legend('B1', 'B2', 'B2', 'B3', 'B3', 'Pmax: 358')
ylabel('Power [mW]')
xlabel('Current density [mA/cm^2]')
%2:1
subplot(5, 1, 2)
plot(m212_I, m212_P, mY1_I, mY1_P,  '-*', mY2_I, mY2_P, mYs1_I, mYs1_P, mYs2_I, mYs2_P, '-*')%, ...
    %[0 0.200], [0.1699 0.1699], 'k', [0 0.200], [0.1212 0.1212], 'k')
title('P 2nd maize 2:1')
xlim([0 2.5])
ylim([0 800])
legend('B1', 'B2', 'B2', 'B3', 'B3', 'Pmax? 169.9', 'Pmax 121.2')
ylabel('Efficiency P')
xlabel('Current density [mA/cm^2]')
%4:1
subplot(5, 1, 3)
plot(m412_I, m412_P, mZ1_I, mZ1_P, mZ2_I, mZ2_P)%, ...
    %[0 0.200], [0.113 0.113], 'k') 
title('P 1st + 2nd maize 4:1')
xlim([0 2.5])
ylim([0 800])
legend('B1', 'B2', 'B2', 'Pmax 113')
ylabel('Efficiency P')
xlabel('Current density [mA/cm^2]')
%5:1
subplot(5, 1, 4)
plot(m511_I, m511_P, '-*', m512_I, m512_P)%, ...
    %[0 0.7e-4], [148.4 148.4], 'k', [0 0.200], [0.08951 0.08951], 'k') %en f?r d?lig
title('P 2nd maize 5:1')
xlim([0 2.5])
ylim([0 800])
legend('B1', 'B1', 'Pmax? 148.4', 'Pmax 89.51')
ylabel('Efficiency P')
xlabel('Current density [mA/cm^2]')
%10:1
subplot(5, 1, 5)
plot(m1011_I, m1011_P, m1012_I, m1012_P, m1013_I, m1013_P,  '-*')%, ...
    %[0 0.200], [0.1634 0.1634], 'k', [0 0.200], [0.1031 0.1031], 'k')
title('P 2nd maize 10:1')
xlim([0 2.5])
ylim([0 800])
ylabel('Efficiency P')
xlabel('Current density [mA/cm^2]')
legend('B1', 'B1', 'B1', 'Pmax? 163.4', 'Pmax 103.1')

% %effiency without measurement errors
% figure
% subplot(5, 1, 1)
% plot(m113_I, m113_P, mX1_I, mX1_P, mX2_I, mX2_P, mXs1_I, mXs1_P)%, [0 0.200], [0.08949 0.08949], 'k')
% title('P 1st + 2nd maize I-Pmax w/out pot error curves, 1:1')
% xlim([0 2.5])
% ylim([0 800])
% %legend('11', 'X1', 'X2', 'Xs1', 'Pmax 89.49')
% ylabel('Efficiency P')
% subplot(5, 1, 2)
% plot(m212_I, m212_P, mY2_I, mY2_P, mYs1_I, mYs1_P)%, [0 0.200], [0.1212 0.1212], 'k')
% title('P 2nd maize 2:1')
% xlim([0 2.5])
% ylim([0 800])
% %legend('21', 'Y2', 'Ys1', 'Pmax 121.2')
% subplot(5, 1, 3)
% plot(m412_I, m412_P, mZ1_I, mZ1_P, mZ2_I, mZ2_P)%, [0 0.200], [0.113 0.113], 'k') 
% title('P 1st + 2nd maize 4:1')
% xlim([0 2.5])
% ylim([0 800])
% %legend('1', '1Z', '2Z', 'Pmax 113')
% subplot(5, 1, 4)
% plot(m512_I, m512_P)%, [0 0.200], [0.08951 0.08951], 'k') %en f?r d?lig
% title('P 2nd maize 5:1')
% xlim([0 2.5])
% ylim([0 800])
% %legend('Pmax 89.51')
% subplot(5, 1, 5)
% plot(m1011_I, m1011_P, m1012_I, m1012_P)%, [0 0.200], [0.1031 0.1031], 'k')
% title('P 2nd maize 10:1')
% xlim([0 2.5])
% ylim([0 800])
% %legend('Pmax 103.1')
