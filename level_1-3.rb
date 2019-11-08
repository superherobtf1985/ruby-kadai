# 3 入力された整数を元に以下の出力をしてください。
# 例)
# 入力 -> 3
# 出力 ->
#
# ***
# ***
# ***

puts '数字を入力してください'
input = gets.to_i

input.times {
  input.times {
    print '*'
  }
  puts ''
}
