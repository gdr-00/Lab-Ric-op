set NODE;
set ARC within NODE cross NODE; #sottoinsieme prodotto cartesiano di N
#Archi fatti da una coppia di nodi

param b{NODE};
param c{ARC};

check: sum {i in NODE} b[i] = 0; #come entro in un nodo devo uscirci e come esco da un nodo devo entrarci

var x{ARC} binary;

minimize path_cost: 
	sum { (i,j) in ARC } c[i,j] * x[i,j]; #se Xij vale 1 allora è sul cammino minimo, se vale 0 non lo è

s.t. balance { v in NODE }:
	 sum { (i,v) in ARC } x[i,v] - sum { (v,j) in ARC } x[v,j] = b[v];
