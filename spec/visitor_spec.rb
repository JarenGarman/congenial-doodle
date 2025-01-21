# frozen_string_literal: true

require_relative 'spec_helper'

RSpec.describe Visitor do
  subject(:first_visitor) { described_class.new('Bruce', 54, '$10') }

  describe '#initialize' do
    it { is_expected.to be_instance_of described_class }

    it 'has a name' do
      expect(first_visitor.name).to eq('Bruce')
    end

    it 'has a height' do
      expect(first_visitor.height).to eq(54)
    end

    it 'has spending money' do
      expect(first_visitor.spending_money).to eq(10)
    end

    it 'has no preferences' do
      expect(first_visitor.preferences).to eq([])
    end
  end
end
