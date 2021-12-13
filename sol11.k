#!/usr/bin/env k

i:`I$''0:"inputs/11"

nn:{({|/(x<0)|x>- 1-#i}')_(+x+(!3 3)-1)^x}
ns:{d:,/(!#x[1]){x,'y}'&'x[1]>9;d^x[0]}

ex:{b:ns x; (x[0],b; x[1] {.[x;y;1+]}/,/nn'b)}
step:{(d<10)*d:*|ex/(();x+1)}

+//0=100 step\i

s:+/#'i;*&s=+//'0=600 step\i
