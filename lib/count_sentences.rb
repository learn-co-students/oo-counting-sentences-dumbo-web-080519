require 'pry'

class String

  def sentence?()
    return self.end_with?(".")
    
  end

  def question?
    return self.end_with?("?")
  end

  def exclamation?
    return self.end_with?("!")
  end

  def count_sentences
    array = self.split(/[!.?] /)  # regex
    if array.length === 0
      return 0
    elsif array.length != 1
      return array.length
    else
      return 1
    end
  end
end