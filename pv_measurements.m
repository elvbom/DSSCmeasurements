close all
clear

res = [999999 899999 799999 699999 599999 499999 399999 299999 199999 99999 89999 79999 69999 59999 49999 39999 29999 19999 9999 8999 7999 6999 5999 4999 3999 2999 1999 999 899 799 699 599 499 399 299 199 99 89 79 69 59 49 39 29 19 9 8 7 6 5 4 3 2 1 0];

%--------------------------------------------------------------------------
%w 5 measurements, airampo

%stora b?garen
%mV, 999 999 - 0 Ohm
aC1_V = 200;
aC2_V = [600 600 530 530 529 529 529 528 528 527 526 522 521 520 518 517 515 513 509 507 497 486 443 431 418 401 377 343 297 232 160 073 064 057 49.1 40.6 32.5 24.4 16.2 8.0 7.2 6.4 5.6 4.7 3.9 3.0 2.2 1.4 0.6 0.4 0.3 0.3 0.2 0.1 0];

aB1_V = [402 402 396 393 388 385 374 374 363 358 349 336 330 323 316 306 296 287 286 282 283 284 282 192 073 052 026 023 021 19.7 17.0 14.2 8.7 5.8 2.8 2.5 2.2 1.9 1.6 1.3 1.0 0.7 0.4 0.1 0.1 0 0 0 0 0 0 0 0 0 0];
aB2_V = 490;
aB3_V = [566 566 564 563 561 559 557 555 553 550 547 540 539 533 527 522 516 509 498 474 402 374 340 310 276 235 193 149 101 48.5 43.6 38.6 33.5 28.6 23.5 18.9 14.0 9.2 4.5 4.0 3.5 3.1 2.6 2.1 1.6 1.2 0.7 0.3 0.2 0.2 0.1 0.1 0 0 0];

aC2_I = aC2_V./res;
aB1_I = aB1_V./res;
aB3_I = aB3_V./res;

% figure
% plot(aC2_I, aC2_V, aB1_I, aB1_V, aB3_I, aB3_V);
% legend('2C', '1B', '3B')
% title('1st airampo 2C 1B 3B')


%------------------------------------------------------------------------------------------------------
%------------------------------------------------------------------------------------------------------

%w 6 monday

%airampo, mV
aBprim1_V = [538 538 540 539 540 539 539 538 538 536 534 530 529 526 524 521 517 510 496 431 421 406 388 366 325 385 227 157 119 97 82 68 54 41 27 14 13 12 11 9 8 7 6 5 3 2 1 0.9 0.8 0.7 0.6 0.5 0.4 0.2 0];
aBprim1_I = aBprim1_V./res;
aBprim2_V = [612 612 610 609 609 608 607 606 605 604 603 601 600 598 597 595 593 589 583 564 559 552 545 535 521 500 565 389 201 175 155 135 115 105 56 37 19 17 14 12 10.5 8.6 7.0 5.1 4.0 2.0 1.5 1.3 1.1 0.9 0.7 0.6 0.4 0.2 0];
aBprim2_I = aBprim2_V./res;

aCprim1_V = [602 602 602 602 602 601 600 598 594 591 587 585 584 581 576 571 563 545 497 582 466 444 415 392 342 270 189 92.0 80.0 72.0 62.9 53.0 42.8 36.7 25.5 17.7 8.8 7.0 6.8 6.0 5.0 4.3 3.3 2.5 1.7 0.9 0.6 0.6 0.5 0.4 0.3 0.2 0.1 0 0];
aCprim1_I = aCprim1_V./res;
%felk?lla beh?vde s?tta p? silver 2ggr
aCprim2_V = [562 562 445 444 442 429 412 413 400 395 381 377 375 370 372 365 360 354 343 292 278 266 255 237 217 185 141 80 73.6 66.0 58.8 50.3 41.8 33.6 25.6 16.8 8.3 7.5 6.6 5.6 4.8 4.0 3.1 2.4 1.5 0.7 0.6 0.5 0.5 0.4 0.3 0.2 0.1 0 0];
aCprim2_V = aCprim2_V./res;

% figure
% subplot(2, 1, 1)
% plot(aBprim1_I, aBprim1_V, aBprim2_I, aBprim2_V)
% title('2nd airampo 1B 2B')
% xlim([0 0.55])
% legend('1', '2')
% subplot(2, 1, 2)
% plot(aCprim1_I, aCprim1_V, aCprim2_V, aCprim2_V)
% title('2nd airampo 1C 2C')
% xlim([0 0.55])
% legend('1', '2')


% %black maize ------------------------------------------------------------
mX1_V = [516 516 511 509 506 504 502 500 496 491 477 467 463 455 447 437 423 401 365 270 204 183 161 142 122 99 77.0 53.8 25.5 22.1 19.2 17.1 13.6 11.4 8.8 6.5 4.3 2.1 1.9 1.6 1.4 1.2 0.9 0.7 0.5 0.3 0.2 0.1 0.1 0 0 0 0 0 0];
mX1_I = mX1_V./res;
mX2_V = [557 557 557 557 556 555 555 554 552 551 550 549 548 546 545 544 541 535 522 517 512 507 500 487 472 439 363 179 160 149 127 108 90.9 72.0 54.1 36.5 18.2 16.2 14.3 12.3 10.5 9.0 7.2 5.3 3.5 1.7 1.4 1.3 1.1 0.9 0.8 0.5 0.2 0.1 0];
mX2_I = mX2_V./res;

%1:1 - bekr?fta med block
%m?ngden majs f?r andra m?tningen
mY1_V = [525 525 525 525 525 525 525 525 525 522 521 521 521 520 519 518 517 516 511 499 495 491 486 481 474 463 444 412 275 246 218 187 157 124 93 61 31 27 24 20 17.6 14.7 12.0 8.6 5.7 2.7 2.5 2.1 1.8 1.5 1.2 0.9 0.6 0.3 0];
mY1_I = mY1_V./res;
mY2_V = [584 584 584 583 583 583 582 581 581 580 576 575 574 571 571 569 567 562 553 530 520 512 501 488 467 435 280 177 123 113 98.7 85.1 69.4 55.2 41.3 27.0 13.9 12.5 10.7 9.4 7.9 6.6 5.3 3.9 2.6 1.2 1.1 1.0 0.8 0.7 0.6 0.4 0.3 0.2 0];
mY2_I = mY2_V./res;

%4:1
%m?ngden majs f?r andra m?tningen
mZ1_V = [536 536 536 535 535 534 534 533 532 531 530 528 528 527 525 524 522 519 510 506 502 497 492 486 475 460 428 307 277 246 219 186 157 134 94.2 63.5 32.2 28.8 25.3 22.3 19.0 15.7 12.6 9.4 6.1 2.8 2.5 2.3 1.9 1.6 1.3 0.9 0.6 0.2 0];
mZ1_I = mZ1_V./res;
mZ2_V = [530 530 528 529 528 527 526 526 525 524 523 522 521 510 519 517 516 513 504 501 499 496 492 486 478 463 437 336 307 280 247 210 177 142 108 71.4 35.0 31.3 27.6 24.0 21.5 18.6 13.0 10.1 6.6 3.1 2.8 2.5 2.1 1.8 1.4 1.1 0.7 0.4 0];
mZ2_I = mZ2_V./res;

%? = v
%1:1
%mer majs ?n 2a
mV1_V = [531 531 531 530 530 530 529 528 527 526 525 523 522 521 519 517 515 514 504 501 497 492 486 479 470 456 422 299 274 241 215 192 160 127 95.2 63.0 31.6 28.2 25.4 21.6 19.1 16.0 12.6 9.3 6.1 2.9 2.5 2.2 1.9 1.6 1.3 1.0 0.7 0.4 0];
mV1_I = mV1_V./res;
mV2_V = [554 554 553 552 552 552 551 550 549 548 546 545 544 543 542 540 538 535 529 513 507 502 494 485 470 450 401 298 174 146 132 114 98 81 67.5 50.5 33.7 17.0 14.6 12.9 11.2 9.7 8.2 6.5 4.7 3.1 1.4 1.3 1.1 0.9 0.8 0.7 0.5 0.3 0];
mV2_I = mV2_V./res;

%? = w
mW1_V = [520 520 519 520 520 519 519 519 518 517 517 517 516 516 515 514 511 507 494 490 486 481 475 465 450 427 381 249 227 206 180 158 135 111 85.4 58.0 29.0 25.5 22.5 19.6 16.6 13.7 10.9 8.1 5.1 2.5 2.1 1.9 1.6 1.3 1.1 0.8 0.5 0.2 0];
mW1_I = mW1_V./res;
%ljus glappar
mW2_V = [547 547 546 546 544 544 543 542 541 540 538 537 535 534 533 532 530 527 522 506 502 496 491 485 474 456 425 356 186 167 149 130 112 93.6 75.0 55.7 37.1 18.6 16.6 14.7 12.8 11.0 9.1 7.1 5.4 3.5 1.7 1.5 1.3 1.1 0.9 0.6 0.4 0.2 0];
mW2_I = mW2_V./res;

% figure
% subplot(5, 1, 1)
% plot(mX1_I, mX1_V, mX2_I, mX2_V)
% title('1st maize X')
% xlim([0 0.35])
% legend('1', '2')
% subplot(5, 1, 2)
% plot(mY1_I, mY1_V, mY2_I, mY2_V)
% title('1st maize Y')
% xlim([0 0.35])
% legend('1', '2')
% subplot(5, 1, 3)
% plot(mZ1_I, mZ1_V, mZ2_I, mZ2_V)
% title('1st maize Z')
% xlim([0 0.35])
% legend('1', '2')
% subplot(5, 1, 4)
% plot(mV1_I, mV1_V, mV2_I, mV2_V)
% title('1st maize V')
% xlim([0 0.35])
% legend('1', '2')
% subplot(5, 1, 5)
% plot(mW1_I, mW1_V, mW2_I, mW2_V)
% title('1st maize W')
% xlim([0 0.35])
% legend('1', '2')


%------------------------------------------------------------------------------------------------------
%------------------------------------------------------------------------------------------------------
%10/02
%3e m?tningen, majs och kanske airampo med polymer sen

%4 majs

%1:1 - en kvar
%m111_V = [366];
%m112_V = [150];
%ngt ?r fel - oklart vad
%m?ste ha f?rsk majs?
%elektrolyten ?r f?r gammal?
m113_V = [561 561 561 560 558 557 556 555 552 549 547 546 545 544 541 539 536 531 517 511 506 499 490 478 459 423 342 175 155 140 120 105 87 68 53 37 18 16 15 12.3 10.5 8.6 6.8 5.3 3.4 1.6 1.4 1.3 1.1 0.9 0.8 0.6 0.4 0.2 0];
m113_I = m113_V./res;

%2:1 - en kvar
%2 m?tna med d?liga utrustningen
m212_V = [550 550 548 547 545 545 544 543 541 549 539 537 536 535 534 533 531 528 521 518 516 512 508 502 494 480 451 348 325 298 265 230 181 142 111 76.2 42.0 37.1 33.3 29.1 25.1 20.7 16.6 12.3 8.1 3.9 3.5 3.1 2.6 2.2 1.8 1.3 0.9 0.5 0];
m212_I = m212_V./res;

%4:1
m411_V = []; %fuckad
m412_V = [615 615 614 614 613 612 611 610 609 607 606 604 603 601 600 597 593 588 570 563 557 549 539 523 498 448 335 166 146 130 113 97.4 81.4 66.5 48.8 32.3 16.2 14.5 12.8 11.2 9.6 8.0 6.3 4.7 3.1 1.5 1.3 1.2 1.0 0.8 0.7 0.6 0.4 0.2 0];
m412_I = m412_V./res;
m413_V = []; %rispad

%5:1
m511_V = [568 568 567 566 565 565 563 561 559 557 553 552 551 548 547 544 541 539 536 530 515 506 500 490 480 463 437 385 293 162 145 128 113 98.7 83.6 67.1 51.3 35.0 18.0 16.2 14.4 12.4 10.6 8.9 7.0 5.2 3.4 1.4 1.3 1.0 0.9 0.7 0.5 0.3 0];
m511_I = m511_V./res;
m512_V = [609 609 608 608 607 606 606 604 603 602 600 599 596 595 592 591 588 583 571 565 561 555 547 537 523 495 423 222 198 175 153 131 109 87.8 66.2 44.0 22.0 19.6 17.4 15.1 13.0 11.1 8.5 6.3 4.1 1.9 1.7 1.5 1.2 1.0 0.8 0.6 0.4 0.2 0];
m512_I = m512_V./res;
m513_V = []; %f?r l?g, 10mV h?gsta med bra m?tutrustning

%10:1
m1011_V = [620 620 620 620 620 619 618 617 616 614 612 611 610 609 607 605 602 597 581 575 570 563 555 543 523 491 412 215 190 170 150 128 106 85.0 63.6 42.1 20.9 18.6 16.6 14.3 12.2 10.1 8.0 6.0 3.9 1.9 1.6 1.4 1.2 1.0 0.8 0.6 0.4 0.2 0];
m1011_I = m1011_V./res;
m1012_V = [578 578 577 576 575 574 573 572 571 570 569 568 567 566 565 564 562 558 545 542 539 535 530 523 515 495 454 287 262 235 206 176 148 119 90.2 60.2 29.6 26.6 23.5 20.6 17.6 14.6 11.6 8.6 5.6 2.6 2.3 2.0 1.7 1.5 1.1 0.9 0.6 0.3 0];
m1012_I = m1012_V./res;
m1013_V = [589 589 589 589 588 588 587 587 586 585 584 582 581 579 578 576 574 572 568 562 545 537 530 521 510 492 460 404 306 165 147 132 117 101 85.0 68.4 51.6 34.9 16.0 14.2 12.3 10.6 8.8 7.0 5.2 3.4 1.6 1.5 1.3 1.1 0.9 0.7 0.5 0.4 0];
m1013_I = m1013_V./res; %hade 52 m?tpukter - la till 2 589 i b?rjan

figure
subplot(5, 2, 1)
plot(mY1_I, mY1_V, mY2_I, mY2_V, m113_I, m113_V)
title('1st + 2nd maize 1:1')
xlim([0 0.55])
ylim([0 700])
legend('Y1', 'Y2', '1:1')
subplot(5, 2, 3)
plot(m212_I, m212_V)
title('2nd maize 2:1')
xlim([0 0.55])
ylim([0 700])
%legend('Y1', 'Y2', '1.1')
subplot(5, 2, 5)
plot(mZ1_I, mZ1_V, mZ2_I, mZ2_V, m412_I, m412_V)
title('1st + 2nd maize 4:1')
xlim([0 0.55])
ylim([0 700])
legend('1Z', '2Z', '1')
subplot(5, 2, 7)
plot(m511_I, m511_V, m512_I, m512_V) %en f?r d?lig
title('2nd maize 5:1')
xlim([0 0.55])
ylim([0 700])
subplot(5, 2, 9)
plot(m1011_I, m1011_V, m1012_I, m1012_V, m1013_I, m1013_V)
title('2nd maize 10:1')
xlim([0 0.55])
ylim([0 700])
subplot(5, 2, 2)
plot(mX1_I, mX1_V, mX2_I, mX2_V)
title('1st maize X')
xlim([0 0.55])
ylim([0 700])
legend('1', '2')
subplot(5, 2, 4)
plot(mY1_I, mY1_V, mY2_I, mY2_V)
title('1st maie Y')
xlim([0 0.55])
ylim([0 700])
legend('1', '2')
subplot(5, 2, 6)
plot(mZ1_I, mZ1_V, mZ2_I, mZ2_V)
title('1st maize Z')
xlim([0 0.55])
ylim([0 700])
legend('1', '2')
subplot(5, 2, 8)
plot(mV1_I, mV1_V, mV2_I, mV2_V)
title('1st maize V')
xlim([0 0.55])
ylim([0 700])
legend('1', '2')
subplot(5, 2, 10)
plot(mW1_I, mW1_V, mW2_I, mW2_V)
title('1st maize W')
xlim([0 0.55])
ylim([0 700])
legend('1', '2')


%airampo omgang 3 ---------------------------------------------------------
%med polymerpapper

a31_V = [480 479 477 476 476 475 474 473 471 467 465 463 461 458 455 449 441 424 374 353 335 317 300 268 228 184 130 65.0 56.8 50.0 43.9 37.4 31.4 25.2 18.9 12.3 6.1 5.4 4.7 3.6 2.5 2.0 1.6 1.2 0.8 0.7 0.7 0.6 0.6 0.1 0.1 0.1 0 0 0];
a31_I = a31_V./res;

% figure
% plot(aBprim1_I, aBprim1_V, aBprim2_I, aBprim2_V, a31_I, a31_V)
% title('2nd airampo Bprim Bpoly')
% xlim([0 0.55])
% legend('1', '2', 'poly')


