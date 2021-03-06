function [A,B]=jacobian_PowerGridFault(x,u)

A=[0,0,0,0,0,0,0,0,-(11843388276825235*cos(u(1) - pi/2))/2251799813685248,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;...
-(23676025633015255*x(10)*sin(u(3) - pi/2 - x(1)))/4503599627370496,0,0,0,0,0,0,0,0,-(23676025633015255*cos(u(3) - pi/2 - x(1)))/4503599627370496,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;...
0,-(44988220931025295*x(11)*sin(u(5) - pi/2 - x(2)))/9007199254740992,0,0,0,0,0,0,0,0,-(44988220931025295*cos(u(5) - pi/2 - x(2)))/9007199254740992,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;...
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0;...
0,0,0,0,0,0,0,0,0,0,0,0,(5629499534213120*x(13))/2353789539495869,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0;...
0,0,0,0,0,0,0,0,0,0,0,0,0,(4503599627370496*x(14))/4772645407266107,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0;...
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0;...
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,(9007199254740992*x(16))/4732007817785925,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0;...
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0;...
-(23676025633015255*x(10)*cos(u(3) - pi/2 - x(1)))/4503599627370496,0,0,0,0,0,0,0,0,10*x(10) + (23676025633015255*sin(u(3) - pi/2 - x(1)))/4503599627370496,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0;...
0,-(44988220931025295*x(11)*cos(u(5) - pi/2 - x(2)))/9007199254740992,0,0,0,0,0,0,0,0,10*x(11) + (44988220931025295*sin(u(5) - pi/2 - x(2)))/9007199254740992,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0;...
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0;...
0,0,0,0,0,0,0,0,0,0,0,0,(2251799813685248*x(13))/2353789539495869,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0;...
0,0,0,0,0,0,0,0,0,0,0,0,0,(228557681089052672*x(14))/426129054220188125,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0;...
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0;...
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,(15762598695796736*x(16))/23660039088929625,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0;...
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1;...
0,0,-(625*x(9)*x(12)*cos(x(3)))/36,0,0,0,0,0,-(625*x(12)*sin(x(3)))/36,0,0,-(625*x(9)*sin(x(3)))/36,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;...
16*x(10)*x(15)*cos(x(1) - x(6)),0,0,0,0,-16*x(10)*x(15)*cos(x(1) - x(6)),0,0,0,16*x(15)*sin(x(1) - x(6)),0,0,0,0,16*x(10)*sin(x(1) - x(6)),0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;...
0,(5000*x(11)*x(17)*cos(x(2) - x(8)))/293,0,0,0,0,0,-(5000*x(11)*x(17)*cos(x(2) - x(8)))/293,0,0,(5000*x(17)*sin(x(2) - x(8)))/293,0,0,0,0,0,(5000*x(11)*sin(x(2) - x(8)))/293,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;...
0,0,x(12)*(x(13)*((3400*cos(x(3) - x(4)))/293 + (400*sin(x(3) - x(4)))/293) + x(14)*((92000*cos(x(3) - x(5)))/8753 + (17000*sin(x(3) - x(5)))/8753) + (625*x(9)*cos(x(3)))/36),-x(12)*x(13)*((3400*cos(x(3) - x(4)))/293 + (400*sin(x(3) - x(4)))/293),-x(12)*x(14)*((92000*cos(x(3) - x(5)))/8753 + (17000*sin(x(3) - x(5)))/8753),0,0,0,(625*x(12)*sin(x(3)))/36,0,0,(3723777665237547*x(12))/562949953421312 - x(13)*((400*cos(x(3) - x(4)))/293 - (3400*sin(x(3) - x(4)))/293) - x(14)*((17000*cos(x(3) - x(5)))/8753 - (92000*sin(x(3) - x(5)))/8753) + (625*x(9)*sin(x(3)))/36,-x(12)*((400*cos(x(3) - x(4)))/293 - (3400*sin(x(3) - x(4)))/293),-x(12)*((17000*cos(x(3) - x(5)))/8753 - (92000*sin(x(3) - x(5)))/8753),0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0;...
0,0,-x(12)*x(13)*((3400*cos(x(3) - x(4)))/293 - (400*sin(x(3) - x(4)))/293),x(13)*(x(12)*((3400*cos(x(3) - x(4)))/293 - (400*sin(x(3) - x(4)))/293) + x(15)*((32200*cos(x(4) - x(6)))/5389 + (6400*sin(x(4) - x(6)))/5389)),0,-x(13)*x(15)*((32200*cos(x(4) - x(6)))/5389 + (6400*sin(x(4) - x(6)))/5389),0,0,0,0,0,-x(13)*((400*cos(x(3) - x(4)))/293 + (3400*sin(x(3) - x(4)))/293),(1437094189624437*x(13))/281474976710656 - x(12)*((400*cos(x(3) - x(4)))/293 + (3400*sin(x(3) - x(4)))/293) - x(15)*((6400*cos(x(4) - x(6)))/5389 - (32200*sin(x(4) - x(6)))/5389),0,-x(13)*((6400*cos(x(4) - x(6)))/5389 - (32200*sin(x(4) - x(6)))/5389),0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0;...
0,0,-x(12)*x(14)*((92000*cos(x(3) - x(5)))/8753 - (17000*sin(x(3) - x(5)))/8753),0,x(14)*(x(17)*((6291804482536605*cos(x(5) - x(8)))/1125899906842624 + (39000*sin(x(5) - x(8)))/30421) + x(12)*((92000*cos(x(3) - x(5)))/8753 - (17000*sin(x(3) - x(5)))/8753)),0,0,-x(14)*x(17)*((6291804482536605*cos(x(5) - x(8)))/1125899906842624 + (39000*sin(x(5) - x(8)))/30421),0,0,0,-x(14)*((17000*cos(x(3) - x(5)))/8753 + (92000*sin(x(3) - x(5)))/8753),0,(1815063457760787*x(14))/281474976710656 - x(17)*((39000*cos(x(5) - x(8)))/30421 - (6291804482536605*sin(x(5) - x(8)))/1125899906842624) - x(12)*((17000*cos(x(3) - x(5)))/8753 + (92000*sin(x(3) - x(5)))/8753),0,0,-x(14)*((39000*cos(x(5) - x(8)))/30421 - (6291804482536605*sin(x(5) - x(8)))/1125899906842624),0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0,0;...
-16*x(10)*x(15)*cos(x(1) - x(6)),0,0,-x(13)*x(15)*((32200*cos(x(4) - x(6)))/5389 - (6400*sin(x(4) - x(6)))/5389),0,x(15)*(x(16)*((11520*cos(x(6) - x(7)))/841 + (1360*sin(x(6) - x(7)))/841) + x(13)*((32200*cos(x(4) - x(6)))/5389 - (6400*sin(x(4) - x(6)))/5389) + 16*x(10)*cos(x(1) - x(6))),-x(15)*x(16)*((11520*cos(x(6) - x(7)))/841 + (1360*sin(x(6) - x(7)))/841),0,0,-16*x(15)*sin(x(1) - x(6)),0,0,-x(15)*((6400*cos(x(4) - x(6)))/5389 + (32200*sin(x(4) - x(6)))/5389),0,(1578920850995367*x(15))/281474976710656 - x(16)*((1360*cos(x(6) - x(7)))/841 - (11520*sin(x(6) - x(7)))/841) - x(13)*((6400*cos(x(4) - x(6)))/5389 + (32200*sin(x(4) - x(6)))/5389) - 16*x(10)*sin(x(1) - x(6)),-x(15)*((1360*cos(x(6) - x(7)))/841 - (11520*sin(x(6) - x(7)))/841),0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0,0;...
0,0,0,0,0,-x(15)*x(16)*((11520*cos(x(6) - x(7)))/841 - (1360*sin(x(6) - x(7)))/841),x(16)*(x(15)*((11520*cos(x(6) - x(7)))/841 - (1360*sin(x(6) - x(7)))/841) + x(17)*((57600*cos(x(7) - x(8)))/5887 + (6800*sin(x(7) - x(8)))/5887)),-x(16)*x(17)*((57600*cos(x(7) - x(8)))/5887 + (6800*sin(x(7) - x(8)))/5887),0,0,0,0,0,0,-x(16)*((1360*cos(x(6) - x(7)))/841 + (11520*sin(x(6) - x(7)))/841),(32640*x(16))/5887 - x(15)*((1360*cos(x(6) - x(7)))/841 + (11520*sin(x(6) - x(7)))/841) - x(17)*((6800*cos(x(7) - x(8)))/5887 - (57600*sin(x(7) - x(8)))/5887),-x(16)*((6800*cos(x(7) - x(8)))/5887 - (57600*sin(x(7) - x(8)))/5887),0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,0;...
0,-(5000*x(11)*x(17)*cos(x(2) - x(8)))/293,0,0,-x(14)*x(17)*((6291804482536605*cos(x(5) - x(8)))/1125899906842624 - (39000*sin(x(5) - x(8)))/30421),0,-x(16)*x(17)*((57600*cos(x(7) - x(8)))/5887 - (6800*sin(x(7) - x(8)))/5887),x(17)*(x(14)*((6291804482536605*cos(x(5) - x(8)))/1125899906842624 - (39000*sin(x(5) - x(8)))/30421) + x(16)*((57600*cos(x(7) - x(8)))/5887 - (6800*sin(x(7) - x(8)))/5887) + (5000*x(11)*cos(x(2) - x(8)))/293),0,0,-(5000*x(17)*sin(x(2) - x(8)))/293,0,0,-x(17)*((39000*cos(x(5) - x(8)))/30421 + (6291804482536605*sin(x(5) - x(8)))/1125899906842624),0,-x(17)*((6800*cos(x(7) - x(8)))/5887 + (57600*sin(x(7) - x(8)))/5887),(5487853713304691*x(17))/1125899906842624 - x(14)*((39000*cos(x(5) - x(8)))/30421 + (6291804482536605*sin(x(5) - x(8)))/1125899906842624) - x(16)*((6800*cos(x(7) - x(8)))/5887 + (57600*sin(x(7) - x(8)))/5887) - (5000*x(11)*sin(x(2) - x(8)))/293,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0;...
0,0,(625*x(9)*x(12)*sin(x(3)))/36,0,0,0,0,0,(625*x(9))/18 - (625*x(12)*cos(x(3)))/36,0,0,-(625*x(9)*cos(x(3)))/36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0;...
16*x(10)*x(15)*sin(x(1) - x(6)),0,0,0,0,-16*x(10)*x(15)*sin(x(1) - x(6)),0,0,0,32*x(10) - 16*x(15)*cos(x(1) - x(6)),0,0,0,0,-16*x(10)*cos(x(1) - x(6)),0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0;...
0,(5000*x(11)*x(17)*sin(x(2) - x(8)))/293,0,0,0,0,0,-(5000*x(11)*x(17)*sin(x(2) - x(8)))/293,0,0,(10000*x(11))/293 - (5000*x(17)*cos(x(2) - x(8)))/293,0,0,0,0,0,-(5000*x(11)*cos(x(2) - x(8)))/293,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0;...
0,0,-x(12)*(x(13)*((400*cos(x(3) - x(4)))/293 - (3400*sin(x(3) - x(4)))/293) + x(14)*((17000*cos(x(3) - x(5)))/8753 - (92000*sin(x(3) - x(5)))/8753) - (625*x(9)*sin(x(3)))/36),x(12)*x(13)*((400*cos(x(3) - x(4)))/293 - (3400*sin(x(3) - x(4)))/293),x(12)*x(14)*((17000*cos(x(3) - x(5)))/8753 - (92000*sin(x(3) - x(5)))/8753),0,0,0,-(625*x(12)*cos(x(3)))/36,0,0,(1383058567338263*x(12))/17592186044416 - x(13)*((3400*cos(x(3) - x(4)))/293 + (400*sin(x(3) - x(4)))/293) - x(14)*((92000*cos(x(3) - x(5)))/8753 + (17000*sin(x(3) - x(5)))/8753) - (625*x(9)*cos(x(3)))/36,-x(12)*((3400*cos(x(3) - x(4)))/293 + (400*sin(x(3) - x(4)))/293),-x(12)*((92000*cos(x(3) - x(5)))/8753 + (17000*sin(x(3) - x(5)))/8753),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0;...
0,0,x(12)*x(13)*((400*cos(x(3) - x(4)))/293 + (3400*sin(x(3) - x(4)))/293),-x(13)*(x(12)*((400*cos(x(3) - x(4)))/293 + (3400*sin(x(3) - x(4)))/293) + x(15)*((6400*cos(x(4) - x(6)))/5389 - (32200*sin(x(4) - x(6)))/5389)),0,x(13)*x(15)*((6400*cos(x(4) - x(6)))/5389 - (32200*sin(x(4) - x(6)))/5389),0,0,0,0,0,-x(13)*((3400*cos(x(3) - x(4)))/293 - (400*sin(x(3) - x(4)))/293),(4880277912601841*x(13))/140737488355328 - x(12)*((3400*cos(x(3) - x(4)))/293 - (400*sin(x(3) - x(4)))/293) - x(15)*((32200*cos(x(4) - x(6)))/5389 + (6400*sin(x(4) - x(6)))/5389),0,-x(13)*((32200*cos(x(4) - x(6)))/5389 + (6400*sin(x(4) - x(6)))/5389),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0;...
0,0,x(12)*x(14)*((17000*cos(x(3) - x(5)))/8753 + (92000*sin(x(3) - x(5)))/8753),0,-x(14)*(x(17)*((39000*cos(x(5) - x(8)))/30421 - (6291804482536605*sin(x(5) - x(8)))/1125899906842624) + x(12)*((17000*cos(x(3) - x(5)))/8753 + (92000*sin(x(3) - x(5)))/8753)),0,0,x(14)*x(17)*((39000*cos(x(5) - x(8)))/30421 - (6291804482536605*sin(x(5) - x(8)))/1125899906842624),0,0,0,-x(14)*((92000*cos(x(3) - x(5)))/8753 - (17000*sin(x(3) - x(5)))/8753),0,(8917649124810873*x(14))/281474976710656 - x(17)*((6291804482536605*cos(x(5) - x(8)))/1125899906842624 + (39000*sin(x(5) - x(8)))/30421) - x(12)*((92000*cos(x(3) - x(5)))/8753 - (17000*sin(x(3) - x(5)))/8753),0,0,-x(14)*((6291804482536605*cos(x(5) - x(8)))/1125899906842624 + (39000*sin(x(5) - x(8)))/30421),0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0;...
16*x(10)*x(15)*sin(x(1) - x(6)),0,0,x(13)*x(15)*((6400*cos(x(4) - x(6)))/5389 + (32200*sin(x(4) - x(6)))/5389),0,-x(15)*(x(16)*((1360*cos(x(6) - x(7)))/841 - (11520*sin(x(6) - x(7)))/841) + x(13)*((6400*cos(x(4) - x(6)))/5389 + (32200*sin(x(4) - x(6)))/5389) + 16*x(10)*sin(x(1) - x(6))),x(15)*x(16)*((1360*cos(x(6) - x(7)))/841 - (11520*sin(x(6) - x(7)))/841),0,0,-16*x(15)*cos(x(1) - x(6)),0,0,-x(15)*((32200*cos(x(4) - x(6)))/5389 - (6400*sin(x(4) - x(6)))/5389),0,(4988526565161379*x(15))/70368744177664 - x(16)*((11520*cos(x(6) - x(7)))/841 + (1360*sin(x(6) - x(7)))/841) - x(13)*((32200*cos(x(4) - x(6)))/5389 - (6400*sin(x(4) - x(6)))/5389) - 16*x(10)*cos(x(1) - x(6)),-x(15)*((11520*cos(x(6) - x(7)))/841 + (1360*sin(x(6) - x(7)))/841),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0;...
0,0,0,0,0,x(15)*x(16)*((1360*cos(x(6) - x(7)))/841 + (11520*sin(x(6) - x(7)))/841),-x(16)*(x(15)*((1360*cos(x(6) - x(7)))/841 + (11520*sin(x(6) - x(7)))/841) + x(17)*((6800*cos(x(7) - x(8)))/5887 - (57600*sin(x(7) - x(8)))/5887)),x(16)*x(17)*((6800*cos(x(7) - x(8)))/5887 - (57600*sin(x(7) - x(8)))/5887),0,0,0,0,0,0,-x(16)*((11520*cos(x(6) - x(7)))/841 - (1360*sin(x(6) - x(7)))/841),(6559281476107993*x(16))/140737488355328 - x(15)*((11520*cos(x(6) - x(7)))/841 - (1360*sin(x(6) - x(7)))/841) - x(17)*((57600*cos(x(7) - x(8)))/5887 + (6800*sin(x(7) - x(8)))/5887),-x(16)*((57600*cos(x(7) - x(8)))/5887 + (6800*sin(x(7) - x(8)))/5887),0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0;...
0,(5000*x(11)*x(17)*sin(x(2) - x(8)))/293,0,0,x(14)*x(17)*((39000*cos(x(5) - x(8)))/30421 + (6291804482536605*sin(x(5) - x(8)))/1125899906842624),0,x(16)*x(17)*((6800*cos(x(7) - x(8)))/5887 + (57600*sin(x(7) - x(8)))/5887),-x(17)*(x(14)*((39000*cos(x(5) - x(8)))/30421 + (6291804482536605*sin(x(5) - x(8)))/1125899906842624) + x(16)*((6800*cos(x(7) - x(8)))/5887 + (57600*sin(x(7) - x(8)))/5887) + (5000*x(11)*sin(x(2) - x(8)))/293),0,0,-(5000*x(17)*cos(x(2) - x(8)))/293,0,0,-x(17)*((6291804482536605*cos(x(5) - x(8)))/1125899906842624 - (39000*sin(x(5) - x(8)))/30421),0,-x(17)*((57600*cos(x(7) - x(8)))/5887 - (6800*sin(x(7) - x(8)))/5887),(565656718921883*x(17))/8796093022208 - x(14)*((6291804482536605*cos(x(5) - x(8)))/1125899906842624 - (39000*sin(x(5) - x(8)))/30421) - x(16)*((57600*cos(x(7) - x(8)))/5887 - (6800*sin(x(7) - x(8)))/5887) - (5000*x(11)*cos(x(2) - x(8)))/293,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1];

B=[(11843388276825235*x(9)*sin(u(1) - pi/2))/2251799813685248,0,0,0,0,0;...
0,0,(23676025633015255*x(10)*sin(u(3) - pi/2 - x(1)))/4503599627370496,0,0,0;...
0,0,0,0,0,(44988220931025295*x(11)*sin(u(5) - pi/2 - x(2)))/9007199254740992;...
0,0,0,0,0,0;...
0,0,0,0,0,0;...
0,0,0,0,0,0;...
0,0,0,0,0,0;...
0,0,0,0,0,0;...
0,0,0,0,0,0;...
0,0,(23676025633015255*x(10)*cos(u(3) - pi/2 - x(1)))/4503599627370496,0,0,0;...
0,0,0,0,0,(44988220931025295*x(11)*cos(u(5) - pi/2 - x(2)))/9007199254740992;...
0,0,0,0,0,0;...
0,0,0,0,0,0;...
0,0,0,0,0,0;...
0,0,0,0,0,0;...
0,0,0,0,0,0;...
0,0,0,0,0,0;...
0,0,0,0,0,0;...
0,0,0,0,0,0;...
0,0,0,0,0,0;...
0,0,0,0,0,0;...
0,0,0,0,0,0;...
0,0,0,0,0,0;...
0,0,0,0,0,0;...
0,0,0,0,0,0;...
0,0,0,0,0,0;...
0,0,0,0,0,0;...
0,0,0,0,0,0;...
0,0,0,0,0,0;...
0,0,0,0,0,0;...
0,0,0,0,0,0;...
0,0,0,0,0,0;...
0,0,0,0,0,0;...
0,0,0,0,0,0;...
0,0,0,0,0,0];