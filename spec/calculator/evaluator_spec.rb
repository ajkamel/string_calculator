require 'spec_helper'

describe Calculator::Evaluator do
  before do
    @evaluator = Calculator::Evaluator.new
  end

  context 'addition' do
    it ' should add two integers' do
      expect(@evaluator.evaluate_string('10 + 20')).to eq 30
    end

    it 'add three integers' do
      expect(@evaluator.evaluate_string('1 + 2 + 3')).to eq 6
    end

    it 'add an integer and a float' do
      expect(@evaluator.evaluate_string('10.5 + 2')).to eq 12.5
    end
  end

end
