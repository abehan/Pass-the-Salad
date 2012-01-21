def salad
  salad = ''
  tomato = '354'
  mango = '8769'
  apple = 'okiymjphnu'
  grape = 'qvwsgbrafzetdcx'
  kiwi = 'KLNHPYMJU'
  peach = 'SXDGBFTAEWVRCQ'
  pear = 'hLMUH8Yp96u7JojyKnmiPNk'
  orange = 'ra5d3GWsxXwQEbSDgFzecCRvfBAtVqT4'
  fruits = [apple, orange, pear, orange, pear, orange, pear, orange, pear, orange, pear, grape]
  bowl = (1..10).to_a
  tree = bowl.delete_at(rand(bowl.length))
  vegetable = bowl.delete_at(rand(bowl.length))  
  if tree % 2 == 0
    fruits[tree] = mango
  else
    fruits[tree] = tomato
  end  
  if vegetable % 2 == 0
    fruits[vegetable] = kiwi
  else
    fruits[vegetable] = peach
  end
  fruits.each do |f|
    salad += f.split('').shuffle.join[0,1]
  end 
  return salad
end
puts salad