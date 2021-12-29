#!/usr/bin/env k

dg:{(47<x)&x<58} /digit
cv:{@[x;&dg x;`I$]}
i:cv'0:"inputs/18"

lv:{+\{$[x~"[";1;x~"]";-1;0]}'x} / nesting level

dp:{p:*&y[x];$[p~0N;x;z[p;x]]}

g:{dp[x;{`i=@'x};{@[z;y;x+]}[y]]}
exp:{(l;m;r):(0;x-2;x+3)_y
    ,/(|g[|l;m[1]];0;g[r;m[3]])}
ex:{dp[x;{(4<lv x)&x=","};exp]}

sp:{(l;m;r):(0;x;x+1)_y;nlr:(0;2!nm)+\:-2!nm:m[0];,/(l;"[";nlr[0];",";nlr[1];"]";r)}
s:{dp[x;{(9<x)&`i=@'x};sp]} 

add:{(s@ex/)/"[",x,",",y,"]"}

magp:{(l;m;r):(0;x-2;x+3)_y;,/(l;(3*m[1])+2*m[3];r)}
mag:{ml:|/lv x; dp[x;{(y=",")&x=lv y}[ml];magp]}

*mag/add/i
|/,/mag/',/i add\:/:i
