require './main_class'

y = Trap.new
(0..1).each do |i|
  puts
  puts 'Введите значения a и b для интеграла:'
  print 'a = '
  a = gets.to_f
  print 'b = '
  b = gets.to_f
  if i == 0
    puts 'Для функции x + cos(x):'
    puts "Интеграл = #{y.calc(a, b) do |x|
      x + Math.cos(x)
    end} c точностью #{y.eps}"
  else
    puts 'Для функции tg(x + 1) / (x + 1):'
    puts "Интеграл = #{y.calc(a, b) do |x|
      Math.tan(x + 1) / (x + 1)
    end} c точностью #{y.eps}"
  end
end
