# 4 入力された整数を元に以下の出力をしてください。
# 例)
# 入力 -> 4
# 出力 ->
#
# *
# ***
# *****
# *******

puts '数字を入力してください'
row_count = gets.to_i

column_count = 1

row_count.times {
  column_count.times {
    print '*'
  }
  column_count += 2
  puts ''
}
