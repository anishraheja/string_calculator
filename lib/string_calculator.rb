class StringCalculator
  def self.add(input)
    return 0 if input.empty?
    return input.to_i if input !~ /[,|\n]/

    input.split(/,|\n/).map(&:to_i).sum
  end
end
