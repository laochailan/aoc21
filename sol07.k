#!/usr/bin/env k

i:`I$'","\*0:"inputs/7";a:{x*1 -1@x<0}
r:{+/'+(!1+|/x)y/:x}
&/r[i;{a x-y}]
&/r[i;{n:a x-y; _0.5*n*n+1}]

