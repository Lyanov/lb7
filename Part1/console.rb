require './filegen'

# Class for running task1 from console
class ConsoleModule
  def initialize(stop_word = 'exit')
    @stop_w = stop_word
  end

  def input_from_user
    print format('Enter %s for exit. Enter any other to execute program: ', @stop_w)
    gets.chomp
  end

  def run
    input = input_from_user
    until input == @stop_w
      print 'Enter F file name: '
      f_name = gets.chomp
      data = make_f_file f_name
      puts 'F file:'
      puts data.join ' '
      puts format('%s generated!', f_name)
      print 'Enter G file name: '
      g_name = gets.chomp
      data = make_g_file g_name
      puts 'G file:'
      puts data.join ' '
      puts format('%s generated!', g_name)
      input = input_from_user
    end
  end
end

ConsoleModule.new.run
