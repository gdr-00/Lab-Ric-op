set Prodotti;
set Risorse;

param maxNumProd;
param P {Prodotti};
param Q {Risorse};
param A {Prodotti, Risorse};

var x {Prodotti} >= 0, <= maxNumProd;
maximize Profitto:
    sum{i in Prodotti} P[i]*x[i];

s.t. disponib {j in Risorse}:
    sum {i in Prodotti} A[i,j]*x[i] <= Q[j];