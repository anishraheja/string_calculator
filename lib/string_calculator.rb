class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    delimiter = /,|\n/
    if numbers.start_with?("//")
      delimiter_line, numbers = numbers.split("\n", 2)
      custom_delimiter = delimiter_line[2..]
      delimiter = Regexp.new(Regexp.escape(custom_delimiter))
    end

    parts = numbers.split(delimiter).map(&:to_i)
    parts.sum
  end
end
