close all
clear

res = [999999 899999 799999 699999 599999 499999 399999 299999 199999 99999 89999 79999 69999 59999 49999 39999 29999 19999 9999 8999 7999 6999 5999 4999 3999 2999 1999 999 899 799 699 599 499 399 299 199 99 89 79 69 59 49 39 29 19 9 8 7 6 5 4 3 2 1 0];

%------------------------------------------------------------------------------------------------------
%------------------------------------------------------------------------------------------------------

%w 6 monday

%1:1
mX1_V = [516 516 511 509 506 504 502 500 496 491 477 467 463 455 447 437 423 401 365 270 204 183 161 142 122 99 77.0 53.8 25.5 22.1 19.2 17.1 13.6 11.4 8.8 6.5 4.3 2.1 1.9 1.6 1.4 1.2 0.9 0.7 0.5 0.3 0.2 0.1 0.1 0 0 0 0 0 0];
mX1_I = mX1_V./res;
mX2_V = [557 557 557 557 556 555 555 554 552 551 550 549 548 546 545 544 541 535 522 517 512 507 500 487 472 439 363 179 160 149 127 108 90.9 72.0 54.1 36.5 18.2 16.2 14.3 12.3 10.5 9.0 7.2 5.3 3.5 1.7 1.4 1.3 1.1 0.9 0.8 0.5 0.2 0.1 0];
mX2_I = mX2_V./res;

%2:1
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

%1:1
%mer majs ?n 2a, 15:15 ist?llet f?r 10:10
mXs1_V = [531 531 531 530 530 530 529 528 527 526 525 523 522 521 519 517 515 514 504 501 497 492 486 479 470 456 422 299 274 241 215 192 160 127 95.2 63.0 31.6 28.2 25.4 21.6 19.1 16.0 12.6 9.3 6.1 2.9 2.5 2.2 1.9 1.6 1.3 1.0 0.7 0.4 0];
mXs1_I = mXs1_V./res;
mXs2_V = [554 554 553 552 552 552 551 550 549 548 546 545 544 543 542 540 538 535 529 513 507 502 494 485 470 450 401 298 174 146 132 114 98 81 67.5 50.5 33.7 17.0 14.6 12.9 11.2 9.7 8.2 6.5 4.7 3.1 1.4 1.3 1.1 0.9 0.8 0.7 0.5 0.3 0];
mXs2_I = mXs2_V./res;

%? = w
%2:1, 15:7,5g
mYs1_V = [520 520 519 520 520 519 519 519 518 517 517 517 516 516 515 514 511 507 494 490 486 481 475 465 450 427 381 249 227 206 180 158 135 111 85.4 58.0 29.0 25.5 22.5 19.6 16.6 13.7 10.9 8.1 5.1 2.5 2.1 1.9 1.6 1.3 1.1 0.8 0.5 0.2 0];
mYs1_I = mYs1_V./res;
%ljus glappar
mYs2_V = [547 547 546 546 544 544 543 542 541 540 538 537 535 534 533 532 530 527 522 506 502 496 491 485 474 456 425 356 186 167 149 130 112 93.6 75.0 55.7 37.1 18.6 16.6 14.7 12.8 11.0 9.1 7.1 5.4 3.5 1.7 1.5 1.3 1.1 0.9 0.6 0.4 0.2 0];
mYs2_I = mYs2_V./res;

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

m113_P = m113_V.*m113_I;
mX1_P = mX1_V.*mX1_I;
mX2_P = mX2_V.*mX2_I;
mXs1_P = mXs1_V.*mXs1_I;
mXs2_P = mXs2_V.*mXs2_I;
m212_P = m212_V.*m212_I;
mY1_P = mY1_V.*mY1_I;
mY2_P = mY2_V.*mY2_I;
mYs1_P = mYs1_V.*mYs1_I;
mYs2_P = mYs2_V.*mYs2_I;
m412_P = m412_V.*m412_I;
mZ1_P = mZ1_V.*mZ1_I;
mZ2_P = mZ2_V.*mZ2_I;
m511_P = m511_V.*m511_I;
m512_P = m512_V.*m512_I;
m1011_P = m1011_V.*m1011_I;
m1012_P = m1012_V.*m1012_I;
m1013_P = m1013_V.*m1013_I;

%27/2 -----------------------------------------------------
%sista omgangen mata majs, bestamma konc
%monicas matutrustning
%----------------------------------------------------------

%4.3-5V i grund?
%from 2.59 p?hittat pga m?tfel
m511_15_V = [487 486 485 483 481 478 474 466 447 353 325 301 267 235 200 163 126 86 46 39 36 31 28 23 19 17 20 7.12 6.35 6.43 6.33 5.91 5.76 4.19 4.30 3.37 3.03 2.96 2.89 2.85 2.81 2.76 2.72 2.70 2.69 2.66 2.56 2.0 1.71 1.21 1.0 1.0 0.7 0.3 0];
m511_15_I = m511_15_V./res;
m511_15_P = m511_15_V.*m511_15_I;
m512_15_V = [501 501 501 501 500 500 500 499 496 495 494 492 491 489 485 479 466 414 394 371 341 305 262 216 166 113 54 49.3 49.3 43.9 38.4 32.8 27.4 21.9 16.5 10.8 5.3 4.8 4.2 3.6 3.1 2.5 2.0 1.4 0.9 0.3 0.3 0.2 0.2 0.1 0.1 0 0 0 0];
m512_15_I = m512_15_V./res;
m512_15_P = m512_15_V.*m512_15_I;
m513_15_V = [517 517 516 515 515 514 514 513 513 511 508 506 504 503 501 499 495 489 476 420 401 378 348 311 270 222 172 119 57.2 51.5 45.8 40.0 34.4 28.6 22.9 17.2 11.5 5.7 5.1 4.6 4.0 3.4 2.9 2.3 1.7 1.1 0.6 0.5 0.4 0.3 0.3 0.2 0.1 0.1 0];
m513_15_I = m513_15_V./res;
m513_15_P = m513_15_V.*m513_15_I;
%m514_15_V = []; %gav inget
%m514_15_I = m514_15_V./res;
%m514_15_P = m514_15_V.*m514_15_I;

m511_20_V = [504 504 504 503 502 501 500 499 497 492 478 472 466 460 449 434 409 354 297 170 143 127 112 97.0 64.4 48.9 33.3 16.0 14.4 12.8 11.2 9.6 8.0 6.4 4.8 3.2 1.6 1.4 1.3 1.1 1.0 0.8 0.7 0.5 0.3 0.2 0.2 0.1 0.1 0.1 0.1 0.1 0.1 0 0];
m511_20_I = m511_20_V./res;
m511_20_P = m511_20_V.*m511_20_I;
m512_20_V = [512 511 510 510 509 508 508 507 505 500 498 496 494 492 488 481 470 444 325 300 273 244 213 181 148 114 78.1 37.6 33.7 30 26.2 22.4 18.6 15.0 11.2 7.5 3.8 3.4 3.0 2.6 1.9 1.5 1.1 0.7 0.5 0.4 0.3 0.3 0.3 0.2 0.2 0.1 0.1 0.1 0];
m512_20_I = m512_20_V./res;
m512_20_P = m512_20_V.*m512_20_I;
m513_20_V = [529 528 528 527 526 526 525 523 520 511 508 505 501 496 487 474 448 387 252 218 196 174 150 126 102 77.7 53.0 25.5 22.7 20.1 17.6 15.1 12.6 10.1 7.6 5.0 2.5 2.3 2.0 1.8 1.5 1.3 1.0 0.8 0.5 0.3 0.2 0.2 0.2 0.2 0.1 0.1 0.1 0.1 0];
m513_20_I = m513_20_V./res;
m513_20_P = m513_20_V.*m513_20_I;
%m514_20_V = []; %borta!
%m514_20_I = m514_20_V./res;
%m514_20_P = m514_20_V.*m514_20_I;
%m515_20_V = []; %gav inget
%m515_20_I = m515_20_V./res;
%m515_20_P = m515_20_V.*m515_20_I;

m511_25_V = [505 506 506 506 506 505 505 504 503 500 ...
    498 497 496 494 491 488 482 469 418 ...
    400 380 352 321 281 231 180 125 60.4 ...
    54.3 48.3 42.3 36.2 30.2 24.1 18.1 12.1 6.1 ...
    5.5 4.9 4.3 3.7 3.0 2.4 1.8 1.2 0.6 ...
    0.5 0.5 0.4 0.3 0.3 0.2 0.2 0.1 0];
m511_25_I = m511_25_V./res;
m511_25_P = m511_25_V.*m511_25_I;
m512_25_V = [497 497 497 496 496 495 495 494 493 489 ...
    487 486 484 482 479 475 468 452 378 ...
    355 326 294 260 222 182 140 95.8 46.1 ...
    41.3 36.8 32.3 27.6 23.0 18.4 13.9 9.3 4.6 ...
    4.2 3.7 3.2 2.8 2.3 1.9 1.4 0.9 0.5 ...
    0.4 0.4 0.3 0.3 0.2 0.2 0.1 0.1 0];
m512_25_I = m512_25_V./res;
m512_25_P = m512_25_V.*m512_25_I;
%m513_25_V = []; %rispad
%m513_25_I = m513_25_V./res;
%m513_25_P = m513_25_V.*m513_25_I;

m1011_25_V = [485 480 478 477 476 475 474 472 470 467 ...
    463 461 459 457 454 449 443 431 386 ...
    370 354 334 307 276 237 195 143 75.5 ...
    68.5 61.3 54.1 46.7 39.2 31.6 23.8 16.1 8.1 ...
    7.3 6.5 5.7 4.9 4.0 3.2 2.4 1.6 0.8 ...
    0.7 0.6 0.5 0.4 0.4 0.3 0.2 0.1 0];
m1011_25_I = m1011_25_V./res;
m1011_25_P = m1011_25_V.*m1011_25_I;
%m1012_25_V = [];
%m1012_25_I = m1012_25_V./res;
%m1012_25_P = m1012_25_V.*m1012_25_I;
%m1013_25_V = [];
%m1013_25_I = m1013_25_V./res;
%m1013_25_P = m1013_25_V.*m1013_25_I;

m2011_25_V = [520 520 519 518 518 517 517 516 515 512 511 510 508 507 505 503 498 490 461 451 441 426 404 368 316 250 174 84.1 75.0 66.7 58.7 50.4 42.1 33.3 25.0 16.8 8.3 7.5 6.6 5.8 5.0 4.1 3.3 2.5 1.6 0.8 0.7 0.6 0.5 0.5 0.4 0.3 0.2 0.1 0];
m2011_25_I = m2011_25_V./res;
m2011_25_P = m2011_25_V.*m2011_25_I;
m2012_25_V = [520 519 519 519 518 517 516 516 515 512 ...
    510 509 508 506 504 501 496 484 443 ...
    424 404 377 341 297 246 191 132 63.8 ...
    56.9 50.4 44.2 38.2 31.8 25.3 19.0 12.7 6.3 ...
    5.7 5.0 4.4 3.8 3.1 2.5 1.9 1.2 0.6 ...
    0.5 0.5 0.4 0.3 0.3 0.2 0.1 0.1 0];
m2012_25_I = m2012_25_V./res;
m2012_25_P = m2012_25_V.*m2012_25_I;
m2013_25_V = [503 502 502 501 501 500 499 497 496 492 ...
    488 486 484 482 479 475 468 455 405 ...
    383 364 341 313 280 240 190 137 71.3 ...
    63.9 57.0 50.3 43.3 36.2 29.1 22.0 14.7 7.4 ...
    6.7 5.9 5.1 4.4 3.7 2.9 2.2 1.4 0.7 ...
    0.6 0.6 0.5 0.4 0.3 0.3 0.2 0.1 0];
m2013_25_I = m2013_25_V./res;
m2013_25_P = m2013_25_V.*m2013_25_I;





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

% figure %5:1, max utan fel 18.05, nr2 15.53
% subplot(2, 1, 1)
% plot(m511_15_I, m511_15_P, '-*', m512_15_I, m512_15_P, '-*', m513_15_I, m513_15_P, '-*', ...
%     m511_20_I, m511_20_P, '-.', m512_20_I, m512_20_P, '-.', m513_20_I, m513_20_P, '-.', ...
%     m511_25_I, m511_25_P, '-o', m512_25_I, m512_25_P, '-o')
% legend('15 fel', '15', '15', ...
%     '20', '20', '20', ...
%     '25', '25')
% xlim([0 0.15])
% title('5:1, I vs P')
% subplot(2, 1, 2)
% plot(m511_15_I, m511_15_V, '-*', m512_15_I, m512_15_V, '-*', m513_15_I, m513_15_V, '-*', ...
%     m511_20_I, m511_20_V, '-.', m512_20_I, m512_20_V, '-.', m513_20_I, m513_20_V, '-.', ...
%     m511_25_I, m511_25_V, '-o', m512_25_I, m512_25_V, '-o')
% legend('15 fel', '15', '15', ...
%     '20', '20', '20', ...
%     '25', '25')
% xlim([0 0.15])
% title('I vs V')
% 
% figure %10:1, max 15.94
% subplot(2, 1, 1)
% plot(m1011_25_I, m1011_25_P)
% xlim([0 0.15])
% title('10:1, I vs P')
% subplot(2, 1, 2)
% plot(m1011_25_I, m1011_25_V)
% xlim([0 0.15])
% title('I vs V')
% 
% figure %20:1, max 27.21, nr2 20.4
% subplot(2, 1, 1)
% plot(m2011_25_I, m2011_25_P, m2012_25_I, m2012_25_P, m2013_25_I, m2013_25_P)
% xlim([0 0.15])
% title('20:1, I vs P')
% subplot(2, 1, 2)
% plot(m2011_25_I, m2011_25_V, m2012_25_I, m2012_25_V, m2013_25_I, m2013_25_V)
% xlim([0 0.15])
% title('I vs V')

%plotta alla sista matningen 3e
% figure
% %5:1
% subplot(3, 1, 1)
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
% subplot(3, 1, 2)
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

% figure
% subplot(5, 2, 1)
% plot(m113_I, m113_V) %mY1_I, mY1_V, mY2_I, mY2_V, 
% title('1st + 2nd maize 1:1')
% xlim([0 0.55])
% ylim([0 700])
% legend('Y1', 'Y2', '1:1')
% subplot(5, 2, 3)
% plot(m212_I, m212_V)
% title('2nd maize 2:1')
% xlim([0 0.55])
% ylim([0 700])
% %legend('Y1', 'Y2', '1.1')
% subplot(5, 2, 5)
% plot(m412_I, m412_V) %mZ1_I, mZ1_V, mZ2_I, mZ2_V, 
% title('1st + 2nd maize 4:1')
% xlim([0 0.55])
% ylim([0 700])
% legend('1Z', '2Z', '1')
% subplot(5, 2, 7)
% plot(m511_I, m511_V, m512_I, m512_V) %en f?r d?lig
% title('2nd maize 5:1')
% xlim([0 0.55])
% ylim([0 700])
% subplot(5, 2, 9)
% plot(m1011_I, m1011_V, m1012_I, m1012_V, m1013_I, m1013_V)
% title('2nd maize 10:1')
% xlim([0 0.55])
% ylim([0 700])
% subplot(5, 2, 2)
% plot(mX1_I, mX1_V, mX2_I, mX2_V)
% title('1st maize X')
% xlim([0 0.55])
% ylim([0 700])
% legend('1', '2')
% subplot(5, 2, 4)
% plot(mY1_I, mY1_V, mY2_I, mY2_V)
% title('1st maie Y')
% xlim([0 0.55])
% ylim([0 700])
% legend('1', '2')
% subplot(5, 2, 6)
% plot(mZ1_I, mZ1_V, mZ2_I, mZ2_V)
% title('1st maize Z')
% xlim([0 0.55])
% ylim([0 700])
% legend('1', '2')
% subplot(5, 2, 8)
% plot(mV1_I, mV1_V, mV2_I, mV2_V)
% title('1st maize V')
% xlim([0 0.55])
% ylim([0 700])
% legend('1', '2')
% subplot(5, 2, 10)
% plot(mW1_I, mW1_V, mW2_I, mW2_V)
% title('1st maize W')
% xlim([0 0.55])
% ylim([0 700])
% legend('1', '2')

% figure
% subplot(5, 1, 1)
% plot(m113_I, m113_V, mX1_I, mX1_V, mX2_I, mX2_V, mXs1_I, mXs1_V, mXs2_I, mXs2_V)
% title('1st + 2nd maize 1:1')
% xlim([0 0.55])
% ylim([0 700])
% legend('11', 'X1', 'X2', 'Xs1', 'Xs2')
% subplot(5, 1, 2)
% plot(m212_I, m212_V, mY1_I, mY1_V, mY2_I, mY2_V, mYs1_I, mYs1_V, mYs2_I, mYs2_V)
% title('2nd maize 2:1')
% xlim([0 0.55])
% ylim([0 700])
% legend('21', 'Y1', 'Y2', 'Ys1', 'Ys2')
% subplot(5, 1, 3)
% plot(m412_I, m412_V, mZ1_I, mZ1_V, mZ2_I, mZ2_V) 
% title('1st + 2nd maize 4:1')
% xlim([0 0.55])
% ylim([0 700])
% legend('1', '1Z', '2Z')
% subplot(5, 1, 4)
% plot(m511_I, m511_V, m512_I, m512_V) %en f?r d?lig
% title('2nd maize 5:1')
% xlim([0 0.55])
% ylim([0 700])
% subplot(5, 1, 5)
% plot(m1011_I, m1011_V, m1012_I, m1012_V, m1013_I, m1013_V)
% title('2nd maize 10:1')
% xlim([0 0.55])
% ylim([0 700])

%m?tfel p? nr 29 (-30) motsvarar 899 Ohm
%efficiency w/ measurement errors
% figure
% %1:1
% subplot(6, 1, 1)
% plot(m113_I, m113_P, mX1_I, mX1_P, mX2_I, mX2_P, mXs1_I, mXs1_P, mXs2_I, mXs2_P, '-*', [0 200], [89.49 89.49], 'k')
% title('P 1st + 2nd maize 1:1')
% xlim([0 0.55])
% ylim([0 200])
% legend('11', 'X1', 'X2', 'Xs1', 'Xs2', 'Pmax 89.49')
% ylabel('Efficiency P')
% %2:1
% subplot(6, 1, 2)
% plot(m212_I, m212_P, mY1_I, mY1_P,  '-*', mY2_I, mY2_P, mYs1_I, mYs1_P, mYs2_I, mYs2_P, '-*', [0 200], [169.9 169.9], 'k', [0 200], [121.2 121.2], 'k')
% title('P 2nd maize 2:1')
% xlim([0 0.55])
% ylim([0 200])
% legend('21', 'Y1', 'Y2', 'Ys1', 'Ys2', 'Pmax? 169.9', 'Pmax 121.2')
% %4:1
% subplot(6, 1, 3)
% plot(m412_I, m412_P, mZ1_I, mZ1_P, mZ2_I, mZ2_P, [0 200], [113 113], 'k') 
% title('P 1st + 2nd maize 4:1')
% xlim([0 0.55])
% ylim([0 200])
% legend('1', '1Z', '2Z', 'Pmax 113')
% %5:1
% subplot(6, 1, 4)
% plot(m511_I, m511_P, '-*', m512_I, m512_P, m511_15_I, m511_15_P, m512_15_I, m512_15_P, [0 200], [148.4 148.4], 'k', [0 200], [89.51 89.51], 'k') %en f?r d?lig
% title('P 2nd maize 5:1')
% xlim([0 0.55])
% ylim([0 200])
% legend('Pmax? 148.4', 'Pmax 89.51')
% %10:1
% subplot(6, 1, 5)
% plot(m1011_I, m1011_P, m1012_I, m1012_P, m1013_I, m1013_P,  '-*', [0 200], [163.4 163.4], 'k', [0 200], [103.1 103.1], 'k')
% title('P 2nd maize 10:1')
% xlim([0 0.55])
% ylim([0 200])
% legend('Pmax? 163.4', 'Pmax 103.1')
% %20:1
% subplot(6, 1, 6)
% plot(m1011_I, m1011_P, m1012_I, m1012_P, m1013_I, m1013_P,  '-*', [0 200], [163.4 163.4], 'k', [0 200], [103.1 103.1], 'k')
% title('P 2nd maize 10:1')
% xlim([0 0.55])
% ylim([0 200])
% legend('Pmax? 163.4', 'Pmax 103.1')
% 
% %effiency without measurement errors
% figure
% subplot(5, 1, 1)
% plot(m113_I, m113_P, mX1_I, mX1_P, mX2_I, mX2_P, mXs1_I, mXs1_P, [0 200], [89.49 89.49], 'k')
% title('P 1st + 2nd maize 1:1')
% xlim([0 0.55])
% ylim([0 200])
% legend('11', 'X1', 'X2', 'Xs1', 'Pmax 89.49')
% ylabel('Efficiency P')
% subplot(5, 1, 2)
% plot(m212_I, m212_P, mY2_I, mY2_P, mYs1_I, mYs1_P, [0 200], [121.2 121.2], 'k')
% title('P 2nd maize 2:1')
% xlim([0 0.55])
% ylim([0 200])
% legend('21', 'Y2', 'Ys1', 'Pmax 121.2')
% subplot(5, 1, 3)
% plot(m412_I, m412_P, mZ1_I, mZ1_P, mZ2_I, mZ2_P, [0 200], [113 113], 'k') 
% title('P 1st + 2nd maize 4:1')
% xlim([0 0.55])
% ylim([0 200])
% legend('1', '1Z', '2Z', 'Pmax 113')
% subplot(5, 1, 4)
% plot(m512_I, m512_P, [0 200], [89.51 89.51], 'k') %en f?r d?lig
% title('P 2nd maize 5:1')
% xlim([0 0.55])
% ylim([0 200])
% legend('Pmax 89.51')
% subplot(5, 1, 5)
% plot(m1011_I, m1011_P, m1012_I, m1012_P, [0 200], [103.1 103.1], 'k')
% title('P 2nd maize 10:1')
% xlim([0 0.55])
% ylim([0 200])
% legend('Pmax 103.1')





