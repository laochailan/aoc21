#!/bin/env k

i:("1"=)'0:"inputs/3"

g:(0.5*#i)<+/'+i

(2/g)*(2/~g)

f:{b:(#x[;y])-2*+/x[;y];x@&$[b>0;~z;z]=x[;y]}
ff:{$[1=#x; x; f[x;y;z]]}
r:{$[y>0;ff[r[x;y-1;z];y-1;z];x]}

ox:*r[i;#*i;1]
co:*r[i;#*i;0]
(2/ox)*(2/co)

