require 'pry'

class String


  def sentence?
    string = self.split("")
    if string.last == "."
      return true
    else
      return false
    end
  end

  def question?
    string = self.split("")
    if string.last == "?"
      return true
    else
      return false
    end
  end

  def exclamation?
    string = self.split("")
    if string.last == "!"
      return true
    else
      return false
    end
  end

  def count_sentences
    punctuation = ["!", "?", "."]
    split_string = self.split(" ")
    count = split_string.select {|word| punctuation.include?(word[-1])}
    count.size
  end
end