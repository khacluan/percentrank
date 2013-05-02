require "percentrank/version"

module Percentrank
  def percentrank(n)
    min, max = self.minmax.map(&:to_f)
    (n - min) / (max - min)
  end
end

class Range
  include Percentrank
end

class Array
  include Percentrank
end

