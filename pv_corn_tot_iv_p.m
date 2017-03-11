%alla corn-plots

close all

% %I-V 1st+2nd corn
% figure
% suptitle('Purple corn current-voltage curve with potential measurement errors')
% subplot(5, 1, 1)
% plot(m113_I, m113_V, mX1_I, mX1_V, mX2_I, mX2_V, mXs1_I, mXs1_V, mXs2_I, mXs2_V, '-*')
% title('Concentration 1:1')
% xlim([0 25])
% ylim([0 0.8])
% ylabel('Voltage [V]')
% xlabel('Current density [A/m^2]')
% legend('B1', 'B2', 'B2', 'B3', 'B3')
% subplot(5, 1, 2)
% plot(m212_I, m212_V, mY1_I, mY1_V, '-*', mY2_I, mY2_V, mYs1_I, mYs1_V, mYs2_I, mYs2_V, '-*')
% title('Concentration 2:1')
% xlim([0 25])
% ylim([0 0.8])
% ylabel('Voltage [V]')
% xlabel('Current density [A/m^2]')
% legend('B1', 'B2', 'B2', 'B3', 'B3')
% subplot(5, 1, 3)
% plot(m412_I, m412_V, mZ1_I, mZ1_V, mZ2_I, mZ2_V) 
% title('Concentration 4:1')
% xlim([0 25])
% ylim([0 0.8])
% ylabel('Voltage [V]')
% xlabel('Current density [A/m^2]')
% legend('B1', 'B2', 'B2')
% subplot(5, 1, 4)
% plot(m511_I, m511_V, '-*', m512_I, m512_V) %en f?r d?lig
% title('Concentration 5:1')
% xlim([0 25])
% ylim([0 0.8])
% ylabel('Voltage [V]')
% xlabel('Current density [A/m^2]')
% legend('B1', 'B1')
% subplot(5, 1, 5)
% plot(m1011_I, m1011_V, m1012_I, m1012_V, m1013_I, m1013_V, '-*')
% title('Concentration 10:1')
% xlim([0 25])
% ylim([0 0.8])
% ylabel('Voltage [V]')
% xlabel('Current density [A/m^2]')
% legend('B1', 'B1', 'B1')
% 
% %i-v without measurement errors
% figure
% suptitle('Purple corn current-voltage curve without potential measurement errors')
% subplot(5, 1, 1)
% plot(m113_I, m113_V, mX1_I, mX1_V, mX2_I, mX2_V, mXs1_I, mXs1_V)
% title('Concentration 1:1')
% xlim([0 25])
% ylim([0 0.8])
% ylabel('Voltage [V]')
% xlabel('Current density [A/m^2]')
% legend('B1', 'B2', 'B2', 'B3')
% subplot(5, 1, 2)
% plot(m212_I, m212_V, mY2_I, mY2_V, mYs1_I, mYs1_V)
% title('Concentration 2:1')
% xlim([0 25])
% ylim([0 0.8])
% ylabel('Voltage [V]')
% xlabel('Current density [A/m^2]')
% legend('B1', 'B2', 'B3')
% subplot(5, 1, 3)
% plot(m412_I, m412_V, mZ1_I, mZ1_V, mZ2_I, mZ2_V) 
% title('Concentration 4:1')
% xlim([0 25])
% ylim([0 0.8])
% ylabel('Voltage [V]')
% xlabel('Current density [A/m^2]')
% legend('B1', 'B2', 'B2')
% subplot(5, 1, 4)
% plot(m512_I, m512_V) %en f?r d?lig
% title('Concentration 5:1')
% xlim([0 25])
% ylim([0 0.8])
% ylabel('Voltage [V]')
% xlabel('Current density [A/m^2]')
% legend('B1')
% subplot(5, 1, 5)
% plot(m1011_I, m1011_V, m1012_I, m1012_V)
% title('Concentration 10:1')
% xlim([0 25])
% ylim([0 0.8])
% ylabel('Voltage [V]')
% xlabel('Current density [A/m^2]')
% legend('B1', 'B1')
% 
% %m?tfel p? nr 29 (-30) motsvarar 899 Ohm
% %power w/ measurement errors
% figure
% suptitle('Purple corn current-power curve with potential measurement errors')
% subplot(5, 1, 1)
% plot(m113_I, m113_P, mX1_I, mX1_P, mX2_I, mX2_P, mXs1_I, mXs1_P, mXs2_I, mXs2_P, '-*', ...
%     [0 25], [3.58 3.58], '-.k')
% title('Concentration 1:1')
% xlim([0 25])
% ylim([0 7])
% legend('B1', 'B2', 'B2', 'B3', 'B3', 'Pmax: 3.580 W')
% ylabel('Power [W]')
% xlabel('Current density [A/m^2]')
% subplot(5, 1, 2)
% plot(m212_I, m212_P, mY1_I, mY1_P,  '-*', mY2_I, mY2_P, mYs1_I, mYs1_P, mYs2_I, mYs2_P, '-*', ...
%     [0 25], [6.797 6.797], '-.k')
% title('Concentration 2:1')
% xlim([0 25])
% ylim([0 7])
% legend('B1', 'B2', 'B2', 'B3', 'B3', 'Pmax: 6.797 W')
% ylabel('Power [W]')
% xlabel('Current density [A/m^2]')
% subplot(5, 1, 3)
% plot(m412_I, m412_P, mZ1_I, mZ1_P, mZ2_I, mZ2_P, ...
%     [0 25], [4.52 4.52], '-.k') 
% title('Concentration 4:1')
% xlim([0 25])
% ylim([0 7])
% legend('B1', 'B2', 'B2', 'Pmax: 4.520 W')
% ylabel('Power [W]')
% xlabel('Current density [A/m^2]')
% subplot(5, 1, 4)
% plot(m511_I, m511_P, '-*', m512_I, m512_P, ...
%     [0 25], [5.935 5.935], '-.k')
% title('Concentration 5:1')
% xlim([0 25])
% ylim([0 7])
% legend('B1', 'B1', 'Pmax: 5.935 mW')
% ylabel('Power [W]')
% xlabel('Current density [A/m^2]')
% subplot(5, 1, 5)
% plot(m1011_I, m1011_P, m1012_I, m1012_P, m1013_I, m1013_P,  '-*', ...
%     [0 25], [6.535 6.535], '-.k')
% title('Concentration 10:1')
% xlim([0 25])
% ylim([0 7])
% ylabel('Power [W]')
% xlabel('Current density [A/m^2]')
% legend('B1', 'B1', 'B1', 'Pmax: 6.535 mW')
% 
% % %effiency without measurement errors
% figure
% suptitle('Purple corn current-power curve without potential measurement errors')
% subplot(5, 1, 1)
% plot(m113_I, m113_P, mX1_I, mX1_P, mX2_I, mX2_P, mXs1_I, mXs1_P, ...
%     [0 25], [3.58 3.58], '-.k')
% title('Concentration 1:1')
% xlim([0 25])
% ylim([0 7])
% legend('B1', 'B2', 'B2', 'B3', 'Pmax: 3.580 W')
% ylabel('Power [W]')
% xlabel('Current density [A/m^2]')
% subplot(5, 1, 2)
% plot(m212_I, m212_P, mY2_I, mY2_P, mYs1_I, mYs1_P, ...
%     [0 25], [4.849 4.849], '-.k')
% title('Concentration 2:1')
% xlim([0 25])
% ylim([0 7])
% legend('B1', 'B2', 'B3', 'Pmax: 4.849 W')
% ylabel('Power [W]')
% xlabel('Current density [A/m^2]')
% subplot(5, 1, 3)
% plot(m412_I, m412_P, mZ1_I, mZ1_P, mZ2_I, mZ2_P, ...
%     [0 25], [4.52 4.52], '-.k') 
% title('Concentration 4:1')
% xlim([0 25])
% ylim([0 7])
% legend('B1', 'B2', 'B2', 'Pmax: 4.520 W')
% ylabel('Power [W]')
% xlabel('Current density [A/m^2]')
% subplot(5, 1, 4)
% plot(m512_I, m512_P, ...
%     [0 25], [3.580 3.580], '-.k')
% title('Concentration 5:1')
% xlim([0 25])
% ylim([0 7])
% legend('B1', 'Pmax: 3.580 W')
% ylabel('Power [W]')
% xlabel('Current density [A/m^2]')
% subplot(5, 1, 5)
% plot(m1011_I, m1011_P, m1012_I, m1012_P, ...
%     [0 25], [4.124 4.124], '-.k')
% title('Concentration 10:1')
% xlim([0 25])
% ylim([0 7])
% ylabel('Power [W]')
% xlabel('Current density [A/m^2]')
% legend('B1', 'B1', 'Pmax: 4.124 W')

