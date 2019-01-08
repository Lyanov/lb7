# Word class
class Word
  def initialize(arg)
    @word = arg
  end

  def length
    @word.length
  end

  def str
    @word
  end
end

# Word2 class
class Word2 < Word
  def initialize(arg)
    @word = arg
    @length = @word.length
  end

  attr_reader :length

  def str
    @word
  end
end
