var xA integer;
var xB integer;

maximize guadagno: 3*xA+6*xB;
s.t. display: xA + 2*xB<=10;
s.t. navigazione: xA<=9;
s.t. tastierini: 2*xA+3*xB<=10;
s.t. logica: 2*xA+2*xB<=10;
s.t. trasmissione: xA+3*xB<=12;
s.t. led: xA<=10;

s.t. domA: xA>=0;
s.t. domB: xB>=0;