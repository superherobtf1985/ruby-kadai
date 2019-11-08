# 7 以下の配列を操作し、適切な出力となるよう変換してください。破壊的メソッドも使用しています。
# また、この演習の出力はputsメソッドではなく、pメソッドを使用しています。
# メソッド○の部分を指定しましょう。
#
# array = [0, 9, 2, 7, 4, 5, 6, 3, 8, 1]
# p array.メソッド1
# 出力 -> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
# p array.メソッド2
# 出力 -> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# array.メソッド3
# p array
# 出力 -> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
# array.メソッド4
# p array
# 出力 -> [1, 2, 3, 4, 5, 6, 7, 8, 9]
# p array.メソッド5
# 出力 -> [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
# p array.メソッド6
# 出力 -> [1, 3, 5, 7, 9]
# p array.メソッド7
# 出力 -> [0, 2, 4, 6, 8]
# p array.メソッド8
# 出力 -> [8, 6, 4, 2, 0]

def method2(array)
  sort_array = array.sort
  last_number = sort_array[sort_array.count - 1]
  sort_array.push(last_number + 1)

  return sort_array
end

def method4(array)
  sort_array = array.sort
  sort_array.shift
  return sort_array
end

def method6(array)
  sort_array = array.sort
  even_array = sort_array.each_slice(2).map {|n| n.last}
  return even_array
end

def method7(array)
  sort_array = array.sort
  odd_array = sort_array.each_slice(2).map {|n| n.first}
  return odd_array
end

def method8(array)
  even_array = method7(array)
  return even_array.reverse
end


array = [0, 9, 2, 7, 4, 5, 6, 3, 8, 1]

# メソッド1
p array.sort
puts ""

# メソッド2
p method2(array)
puts ""

# メソッド3
p array.sort
puts ""

# メソッド4
p method4(array)
puts ""

# メソッド5
p array.sort
puts ""

# メソッド6
p method6(array)
puts ""

# メソッド7
p method7(array)
puts ""

# メソッド8
p method8(array)
puts ""
