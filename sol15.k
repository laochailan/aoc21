#!/usr/bin/env k

i:`I$''0:"inputs/15"
op:()
cf:(#i;#*i)#0N
sc:(#i;#*i)#0w
sc[0;0]:0

nn:{a@&~^i ./:a:(1 0;-1 0;0 1;0 -1)+\:x}

h:{+/end-x}

f:{(sc;cf;op;c):x
   c:op[*<sc ./:op]
   n:{[x;y;sc]x@&((sc .y)+i ./:x)<sc ./:x}[nn c;c;sc]
   nnsc:(sc .c)+i ./:n
   (sc {.[x;y[0];{y};y[1]]}/n{(x;y)}'nnsc;cf {.[x;y[0];{y};y[1]]}/n{(x;y)}\:c;?n,op^,c;c)}

end:(#i;#*i)-1
r:{{~end~*|x} f/(sc;cf;,0 0;0)}

r[][0] .end

ex:(,/(!5)+\:)

i:{1+9!x-1}(+ex[+ex[i]])
cf:(#i;#*i)#0N
sc:(#i;#*i)#0w
sc[0;0]:0
end:(#i;#*i)-1

r[][0] .end
