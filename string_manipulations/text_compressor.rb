class TextCompressor
  attr_accessor :index_arr, :unique_words

  def initialize(str)
    @index_arr = []
    @unique_words = []
    make_unique_arr(str)
  end

  def make_unique_arr(str)
    str.split.each_with_index do |word, i|
      i = @unique_words.index(word)
      if i
        @index_arr << i
      else
        @unique_words << word
        @index_arr << @unique_words.size-1
      end
    end
  end
end

print "Type a sentence to compress: "
text_compressor = TextCompressor.new(gets.chomp)
p text_compressor.index_arr
p text_compressor.unique_words
