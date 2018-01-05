irb(main):001:0> def old_roman_numeral(number)
irb(main):002:1>   numeral = []
irb(main):003:1>   while number != 0
irb(main):004:2> 
irb(main):005:2*     m = number/1000
irb(main):006:2>     numeral << "M"*m
irb(main):007:2>     number = number%1000
irb(main):008:2> 
irb(main):009:2*     d = number/500
irb(main):010:2>     numeral << "D"*d
irb(main):011:2>     number = number%500
irb(main):012:2> 
irb(main):013:2*     c = number/100
irb(main):014:2>     numeral << "C"*c
irb(main):015:2>     number = number%100
irb(main):016:2> 
irb(main):017:2*     l = number/50
irb(main):018:2>     numeral << "L"*l
irb(main):019:2>     number = number%50
irb(main):020:2> 
irb(main):021:2*     x = number/10
irb(main):022:2>     numeral << "X"*x
irb(main):023:2>     number = number%10
irb(main):024:2> 
irb(main):025:2*     v = number/5
irb(main):026:2>     numeral << "V"*v
irb(main):027:2>     number = number%5
irb(main):028:2> 
irb(main):029:2*     i = number/1
irb(main):030:2>     numeral << "I"*i
irb(main):031:2>     number = number%1
irb(main):032:2> 
irb(main):033:2*     return numeral.join.to_s
irb(main):034:2>   end
irb(main):035:1> 
irb(main):036:1* 
irb(main):037:1* end
=> nil
irb(main):038:0> 
irb(main):039:0* puts old_roman_numeral(9931)
MMMMMMMMMDCCCCXXXI
=> nil
