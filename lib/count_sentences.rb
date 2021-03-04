require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    new_arr = []
    self.split(/\.|\?|\!/).each do |arr_item|
      new_arr.push(arr_item)
    end
    new_arr.reject { |c| c.empty? }.length
  end
end