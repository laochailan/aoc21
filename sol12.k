#!/usr/bin/env k

i:{x@&~{("start"~x[1])|"end"~x[0]}'x}(|'ri),ri:"-"\'0:"inputs/12"

s:{|/x>"Z"}
ndbl:{(~|/2<sd)&y>-1 ++/2=sd:(.d)@&s'!d:#'=x}
grow:{n:i[;1]@&((*x)~)'i[;0];np:n{(,x),y}\:x;np@&ndbl[;y]'np}

f:{?x,,/grow[;y]'x}

g:{+/{"end"~*x}'f[;x]/(,,"start")}
g[0]
g[1]
