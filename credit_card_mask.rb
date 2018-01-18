# CREDIT CARD MASK
# url: https://www.codewars.com/kata/5412509bd436bd33920011bc/solutions/ruby

# Usually when you buy something, you're asked whether your credit card number, phone number or answer to your
# most secret question is still correct. However, since someone could look over your shoulder, you don't want that
#  shown on your screen. Instead, we mask it.

# Your task is to write a function maskify, which changes all but the last four characters into '#'.

# Examples
# maskify('4556364607935616') # should return '############5616'
# maskify('64607935616')      # should return '#######5616'
# maskify('1')                # should return '1'
# maskify('')                 # should return ''

# # "What was the name of your first pet?"
# maskify('Skippy')                                   # should return '##ippy'
# maskify('Nananananananananananananananana Batman!') # should return '####################################man!'

def maskify(cc)
  return cc if cc.size <=4
  return cc.split(//).map.with_index{|x,y| (y <= cc.size-5) ? '#' : x}.join
end

puts "* TESTS:"
puts "'4556364607935616' => '############5616' : #{(maskify('4556364607935616') == '############5616')}"
puts "'4556364607935616' => '############5616' : #{(maskify('1') == '1')}"
puts "'4556364607935616' => '############5616' : #{(maskify('11111') == '#1111')}"

# Test.assert_equals(maskify('4556364607935616'), '############5616')
# Test.assert_equals(maskify('1'), '1')
# Test.assert_equals(maskify('11111'), '#1111')

# -------------
# BEST SOLUTION
# -------------
# def maskify(cc)
#   cc.gsub(/.(?=....)/, '#')
# end