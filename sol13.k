#!/usr/bin/env k

i:0:"inputs/13"
d:*&""~/:i
(p;cr):{x[0 2]}(0;d;d+1)_i

cr:{(x[11];`I$x[13 + !-13+#x])}'cr
p:`I$","\'p

f:{$[x>y;(2*y)-x;x]}
fx:{(f[x[0];y];x[1])}
fy:{(x[0];f[x[1];y])}
g:{?$[y[0]="x";fx;fy][;y[1]]'x}

r:p g/cr 
(w;h):1+|/'+r

(h;w)#@[(w*h)#" ";{x[0]+w*x[1]}'r;{"#"}]
