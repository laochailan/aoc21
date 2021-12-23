#!/usr/bin/env k

dg:{(47<x)&x<57} /digit
/i:{@[x;&dg x;`I$]}'0:"inputs/18"
i:0:"inputs/18"

lv:{+\{$[x~"[";1;x~"]";-1;0]}'x} / nesting level

g:{p:*&dg x; $[p~0N;x;@[x;*&dg x;`c$(y-"0")+]]}
ex:{p:*&(4<lv x)&x=","
    (l;m;r):(0;p-2;p+3)_x
    ,/(|g[|l;m[1]];"0";g[r;m[3]])}

spl:{p:*&"9"<x;(l;m;r):(0;p;p+1)_x;nlr:`c$'(0;2!nm)+\:-2!nm:m[0]-"0";,/(l;"[";nlr[0];",";nlr[1];"]";r)}
