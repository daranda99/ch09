irb(main):001:0> def roman_numeral num
irb(main):002:1>   raise 'Must use positive integer' if num <= 0
irb(main):003:1>   digit_vals = [['I',   5,     1],
irb(main):004:2*                 ['V',  10,     5],
irb(main):005:2*                 ['X'   50,    10],
irb(main):006:2*                 ['L', 100,    50],
irb(main):007:2*                 ['C', 500,   100],
irb(main):008:2*                 ['D',1000,   500],
irb(main):009:2*                 ['M', nil,  1000],

roman = '' 
remaining = nil

build_rev = proc do |l,m,n|
  num_l = m ? (num % m / n) : (num / n) 
  full = m && (num_l == (m/n - 1))

if full && (num_l>1 || remaining)
  remaining ||= l # carry l if not already carrying
else
if remaining
  roman << l + remaining
  remaining = nil 
end

  roman << l * num_l
 end 
end

 digit_vals.each {|l,m,n| build_rev[l,m,n]} 
 
 roman.reverse
end

puts(roman_numeral(1999))
MIM  
