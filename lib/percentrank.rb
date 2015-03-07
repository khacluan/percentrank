require "percentrank/version"

module Percentrank
  def percentrank(n)
    min, max = self.minmax.map(&:to_f)
    (n - min) / (max - min)
  end

  def percentrank(number, significance = 2)
    array = self.sort

    return (array.index(number).to_f / (array.count - 1).to_f).abs.round(significance) if array.include?(number)

    x1, x2, y1, y2 = 0.0
    array.each_with_index do |element, index|
      if element < number && number < array[index + 1]
        x1 = element
        x2 = array[index + 1]
        y1 = percentrank(array, x1)
        y2 = percentrank(array, x2)

        return (((x2 - number) * y1 + (number - x1) * y2) / (x1 - x2)).abs.round(significance)
      end
    end
    return nil
  rescue
    nil
  end
end

class Range
  include Percentrank
end

class Array
  include Percentrank
end

