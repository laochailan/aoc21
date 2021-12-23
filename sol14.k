#!/usr/bin/env k

(t;i):{(" ",(*x)," ";{(x;*y)} .'" -> "\'2_x)}[0:"inputs/14"]

u:?,//i

id:i[;0]!i[;1]
td:(#'=2':t)
fd:{c:id[x];((x[0];c);(c;x[1]))!(1;1)}
g:{+/(.x)*fd'!x}

d:{x g/td}

c:{(*m)-*|m:v@>v:-2!u {+//(.y)*x=!y}\:x}

c d 10
c d 40

