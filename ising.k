#!/usr/bin/env k

Ts:1+0.1*!24
L:20
ntherm:100
nsweeps:500

nn:{((x).)'L!(-1 0;1 0;0 1;0 -1)+\:y}
mc:{[T;x;y] ns:((1 -1)*x .y)@(*?1)<`exp@(-2%T)*(x .y)*+/nn[x;y]; .[x;y;{y}[;ns]]}
mcswp:{[T;x] x mc[T]/ +!(L;L)}
meas:{{x*x%L*L}@+//x}

f:{
  T:x;
  s:1-2*(L;L)#(L*L)?2;
  stherm: ntherm mcswp[T]/s;
  {(+/x)%L*L*L*L}{x[1]}nsweeps {[T;x](mcswp[T] x[0];x[1],meas x[0])}[T]/(stherm;())}

ms:f'Ts; "out" 0:"\n"/" "/'+$(Ts;ms);
