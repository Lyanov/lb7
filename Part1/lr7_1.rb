def write_to_file
  file = File.new('numf.txt', 'w')
  y = 0
  10.times do
    file.puts(y)
    y += 1
  end
  file.close
end

def gen_some_file
  file = File.new('genfile.txt', 'w')
  100.times do
    y = rand(100)
    file.puts(y)
  end
  file.close
end

def read_from_file(file_name, write_file)
  file_g = File.new(write_file, 'w')
  File.readlines(file_name).each { |line| file_g.puts(line.to_i) if (line.to_i % 3).zero? && line.to_i % 7 != 0 }
  file_g.close
end
