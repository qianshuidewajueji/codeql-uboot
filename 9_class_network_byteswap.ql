import cpp

class NetworkByteSwap extends Expr{
    NetworkByteSwap(){
        exists( MacroInvocation mi | 
            mi.getMacro().getName().regexpMatch("hton.*") and 
            this = mi.getExpr()
        )
    }
}

from NetworkByteSwap n 
select n
