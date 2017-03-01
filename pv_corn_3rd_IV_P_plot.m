figure %5:1, max utan fel 18.05, nr2 15.53
subplot(2, 1, 1)
plot(m511_15_I, m511_15_P, '-*', m512_15_I, m512_15_P, '-*', m513_15_I, m513_15_P, '-*', ...
    m511_20_I, m511_20_P, '-.', m512_20_I, m512_20_P, '-.', m513_20_I, m513_20_P, '-.', ...
    m511_25_I, m511_25_P, '-o', m512_25_I, m512_25_P, '-o')
legend('15 fel', '15', '15', ...
    '20', '20', '20', ...
    '25', '25')
xlim([0 0.15])
ylim([0 30])
title('5:1, I vs P')
subplot(2, 1, 2)
plot(m511_15_I, m511_15_V, '-*', m512_15_I, m512_15_V, '-*', m513_15_I, m513_15_V, '-*', ...
    m511_20_I, m511_20_V, '-.', m512_20_I, m512_20_V, '-.', m513_20_I, m513_20_V, '-.', ...
    m511_25_I, m511_25_V, '-o', m512_25_I, m512_25_V, '-o')
legend('15 fel', '15', '15', ...
    '20', '20', '20', ...
    '25', '25')
xlim([0 0.15])
title('I vs V')

figure %10:1, max 15.94
subplot(2, 1, 1)
plot(m1011_25_I, m1011_25_P)
xlim([0 0.15])
ylim([0 30])
title('10:1, I vs P')
subplot(2, 1, 2)
plot(m1011_25_I, m1011_25_V)
xlim([0 0.15])
title('I vs V')

figure %20:1, max 27.21, nr2 20.4
subplot(2, 1, 1)
plot(m2011_25_I, m2011_25_P, m2012_25_I, m2012_25_P, m2013_25_I, m2013_25_P)
xlim([0 0.15])
ylim([0 30])
title('20:1, I vs P')
subplot(2, 1, 2)
plot(m2011_25_I, m2011_25_V, m2012_25_I, m2012_25_V, m2013_25_I, m2013_25_V)
xlim([0 0.15])
title('I vs V')

% %plotta alla sista matningen 3e
% figure
% %5:1
% subplot(2, 1, 1)
% plot(m511_15_I, m511_15_P, m512_15_I, m512_15_P, m513_15_I, m513_15_P, ...
%     m511_20_I, m511_20_P, m512_20_I, m512_20_P, m513_20_I, m513_20_P, ...
%     m511_25_I, m511_25_P, m512_25_I, m512_25_P, ...
%     m2011_25_I, m2011_25_P, ...
%     m2011_25_I, m2011_25_P, m2012_25_I, m2012_25_P, m2013_25_I, m2013_25_P)
% legend('51,15 fel', '51,15', '51,15', ...
%     '51,20', '51,20', '51,20', ...
%     '51,25', '51,25', ...
%     '10', ...
%     '20,20', '20,20', '20,20')
% xlim([0 0.15])
% title('I vs P')
% 
% subplot(2, 1, 2)
% plot(m511_15_I, m511_15_V, m512_15_I, m512_15_V, m513_15_I, m513_15_V, ...
%     m511_20_I, m511_20_V, m512_20_I, m512_20_V, m513_20_I, m513_20_V, ...
%     m511_25_I, m511_25_V, m512_25_I, m512_25_V, ...
%     m2011_25_I, m2011_25_V, ...
%     m2011_25_I, m2011_25_V, m2012_25_I, m2012_25_V, m2013_25_I, m2013_25_V)
% xlim([0 0.15])
% title('I vs V')
% legend('51,15 fel', '51,15', '51,15', ...
%     '51,20', '51,20', '51,20', ...
%     '51,25', '51,25', ...
%     '10', ...
%     '20,20', '20,20', '20,20')