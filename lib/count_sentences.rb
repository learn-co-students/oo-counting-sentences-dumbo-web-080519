require 'pry'

class String

  def sentence?
    self[-1] == "." ? true : false
  end

  def question?
    self[-1] == "?" ? true : false
  end

  def exclamation?
    self[-1] == "!" ? true : false
  end

  def count_sentences
    punctuation = %w[ . ? !]
    split_string = self.split(" ")
    count = split_string.select {|word| punctuation.include?(word[-1])}
    count.size
  end

end