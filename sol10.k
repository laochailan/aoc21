#!/usr/bin/env k

i:0:"inputs/10"

cl:"([{<"!")]}>";op:{|//x=/:!cl}
f:{c:*x[0]; xd:x[0]_0; $[op[c];s:c,x[1];c~cl[*x[1]];s:x[1]_0;[xd:"";s:(`err;c)]]; (xd;s)}
p:{{#x[0]} f/ (x;())};pi:(p'i)[;1]
sc:")]}>"!3 57 1197 25137;cor:{`err~*x}'pi;+/sc@(*|)'pi@&cor
asc:")]}>"!1+!4; {x@(<x)[_(#x)%2]}0 ({asc[y]+5*x}/)'cl@pi@&~cor

