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

  context 'subtraction' do
    it 'should subtract two integers' do
      expect(@evaluator.evaluate_string('10 - 2')).to eq 8
    end

    it 'should subtract three integers' do
      expect(@evaluator.evaluate_string('10 - 2 - 4')).to eq 4
    end
  end

  context 'multiplication' do
    it 'should multiply two integers' do
      expect(@evaluator.evaluate_string('10 * 2')).to eq 20
    end

    it 'should multiply three integers' do
      expect(@evaluator.evaluate_string('10 * 2 * 5')).to eq 100
    end
  end

  context 'division' do
    it 'should divide two integers' do
      expect(@evaluator.evaluate_string('10 / 2')).to eq 5
    end

    it 'should divide two integers and a float' do
      expect(@evaluator.evaluate_string('10.0 / 2 / 2')).to eq 2.5
    end
  end

end
