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
  end
end
