#!/usr/bin/env k

h:{{4>#x} ("0",)/,/$2\"0123456789ABCDEF"?x}

i:`I$',/h'*0:"inputs/16"

optest:`I$'"00111000000000000110111101000101001010010001001000000000"
optest2:`I$'"11101110000000001101010000001100100000100011000001100000"

chead:{(ver;typ;body):0 3 6_x;{((2/x;2/y;*z);*|z)}[ver;typ] $[4=2/typ;clit;cop]@body}

f:{(x[0],*1 5_x[1];5_x[1])}
clit:{{(2/x[0];x[1])}f {~0=*x[1]} f/(();x)}

clen:{[lbody;lmax;x] lmax>lbody-#x[1]}
cop:{(lnum;body):{(2/x[0];x[1])}(1;16-4**x)_x; (clen[#body;lnum];lnum)[*x] {p:chead x[1];(x[0],,p[0];p[1])}/(();body)} 

c:*chead i
+/{(*x),$[4=x[1];();,/o'x[2]]} c

{$[4=x[1];x[2];(+;*;&;|;0N;>;<;=)[x[1]]/o'x[2]]} c
