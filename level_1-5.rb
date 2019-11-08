# 5 入力された整数を元に以下の出力をしてください。
# 例)
# 入力 -> 3
# 出力 ->
#
#     *
#   ***
# *****

puts '数字を入力してください'
row_count = gets.to_i

last_column_number = 2 * (row_count - 1) + 1
start_mark_number = last_column_number

row_count.times {
  for j in 1..last_column_number
    if j >= start_mark_number
      print '*'
    else
      print ' '
    end
  end

  start_mark_number -= 2
  puts ''
}
