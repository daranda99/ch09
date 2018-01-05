def ask question
irb(main):002:1> while true
irb(main):003:2> puts question
irb(main):004:2> reply = gets.chomp.downcase
irb(main):005:2> return true if reply == 'yes'
irb(main):006:2> return false if reply == 'no'
irb(main):007:2> puts 'Please answer "yes" or "no".'
irb(main):008:2> end
irb(main):009:1> answer # This is what we return (true or false).
irb(main):010:1> end
=> nil
irb(main):016:0> puts(ask('Do you like drinking horchata?'))
Do you like drinking horchata?
yes 
Please answer "yes" or "no".
Do you like drinking horchata?
yes
true
=> nil
