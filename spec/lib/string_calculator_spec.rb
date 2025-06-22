require 'spec_helper'
require_relative '../../lib/string_calculator'

RSpec.describe StringCalculator do
  describe '.add' do
    it 'responds to class method call' do
      expect(StringCalculator).to respond_to(:add)
    end

    context 'when empty input is supplied' do
      it 'returns 0 for an empty string' do
        expect(StringCalculator.add('')).to eq(0)
      end
    end

    context 'when single number is present in input' do
      it 'returns the number itself if one number is provided' do
        expect(StringCalculator.add('1')).to eq(1)
      end
    end

    context 'when a string of comma-separated multiple numbers provided' do
      it 'returns sum of two numbers' do
        expect(StringCalculator.add("1,2")).to eq(3)
      end

      it 'returns sum of three numbers' do
        expect(StringCalculator.add("1,2,3")).to eq(6)
      end

      it 'returns sum of multiple comma-separated numbers' do
        expect(StringCalculator.add("1,2,3,4")).to eq(10)
      end

      context 'supporting newline as delimiter' do
        it 'returns sum of all the numbers' do
          expect(StringCalculator.add("1\n2,3")).to eq(6)
        end
      end
    end

    context 'with custom delimiter is present' do
      context "';' as delimiter" do
        it 'returns the sum of all the numbers' do
          expect(StringCalculator.add("//;\n1;2")).to eq(3)
        end
      end

      context "'!' as delimiter" do
        it 'returns the sum of all the numbers' do
          expect(StringCalculator.add("//!\n5!5")).to eq(10)
        end

        it 'returns the sum of all the numbers' do
          expect(StringCalculator.add("//!\n5!5!10")).to eq(20)
        end
      end
    end

    context 'with negative number as input string' do
      it 'raises exception for negative numbers' do
        expect {
          StringCalculator.add("1,-2,3,-4")
        }.to raise_error("negative numbers not allowed -2,-4")
      end
    end
  end
end
