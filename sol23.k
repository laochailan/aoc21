#!/usr/bin/env k

i:- "A"-+{x@&("E">x)&"A"<1+x}' -1_2_I:0:"inputs/23"
L:+/+/'"."=I
D:2
p:2*1+!4
np:(!L)^/p
ra:{(a;b):(&;|).\:(x;y);a+!1+b-a}
cm:{(r;h;s):x;t:h y;(&/^h@ra[y;p t]^y)&(0=#r t)|&/t=r t}
cl:{(0<#'x)&~&/'(!4)=\:'x}
fnp:{&/^x@ra[y;z]}

fi:D#'!4
abs:|/(-1 1)*\:
fac:1 10 100 1000
msc:{s:fac[y]*(1+D-#x)+abs z-p y;$[0=#s;0;s]}
lsc:{fac[y]*z+D-#x}
m:{(r;h;s):x;t:h y;r[t],:t;h[y]:0N;(r;h;s+msc[r t; t; y])}
l:{(r;h;s):x;t:*r z;r[z]:1_r[z];h[y]:t;(r;h;s+lsc[r z; t;abs y-p z])}
f:{(r;h;s):x; (m[x]'{$[0=#y;();y@&x'y]}[cm[x];&~^h]),,/{l[x;;y]' np@&fnp[x[1];p y]'np}[x]'&cl r}

w2:{a@&(~~)':-1_'a:x@<x}
i0:,(i;L#0N;0)
e:w2@?,/{$[fi~*x;,x;f x]}'

*|*e/i0
D:4
fi:D#'!4
ext:(3 3;2 1;1 0;0 2)
i1:,((i,'ext)[;0 2 3 1];L#0N;0)
*|*e/i1

