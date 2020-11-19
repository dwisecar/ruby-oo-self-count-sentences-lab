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
    count_array = self.split
    # count_num = count_array.reject { |i| i.empty? }
    count_num = 0
    count_array.each do |element|
      if element.sentence? || element.question? || element.exclamation?
        count_num += 1
      end
    end
    count_num
  end
end