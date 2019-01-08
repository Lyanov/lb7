def make_f_file(f_name = 'f.txt', num_number = 350, num_max = 100)
  data = Array.new(num_number)
              .map { rand(num_max).to_s }
              .tap { |arr| arr.push *arr[0..rand(num_number)] }
  File.write(f_name, data.join(' '))
  data
end

def make_g_file(g_name = 'g.txt', f_name = 'f.txt')
  data = File.read(f_name).split.uniq
  File.write(g_name, data.join(' '))
  data
end
