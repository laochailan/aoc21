#!/usr/bin/env k

op:*'=`inp`add`mul`div`mod`eql
opn:($'!op)!!op
i:" "\'0:"inputs/24"
i[;0]:(($'!op)!!op) i[;0]
i[;1]:*'i[;1]
i@:&~`inp=*'i
i[;2]:d:{$[|/x<"a";`I$x;*x]}'i[;2]

p:(14 17#i[;2])[;3 4 14]

r:{a:y[2]+26!*x; w:$[(0<a)&10>a;a;y[0]]; a:~a~w; ((a*w+y[3])+(1+25*a)*(-y[1])!*x;(*|x),w)}
fi:(&~10>p[;1])?!#p
tr:(,/'+1+!7#9)
mnd:{(0;()) r/(x@fi),'p}
(10/*|)'(*|:;*:)@\:d@&0=*'d:mnd'tr
