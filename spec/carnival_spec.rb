# frozen_string_literal: true

require_relative 'spec_helper'

RSpec.describe Carnival do
  subject(:carnival) { described_class.new(14) }

  let(:first_ride) do
    described_class.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })
  end
  let(:second_ride) do
    described_class.new({ name: 'Ferris Wheel', min_height: 36, admission_fee: 5, excitement: :gentle })
  end
  let(:third_ride) do
    described_class.new({ name: 'Roller Coaster', min_height: 54, admission_fee: 2, excitement: :thrilling })
  end
  let(:first_visitor) { Visitor.new('Bruce', 54, '$10') }
  let(:second_visitor) { Visitor.new('Tucker', 36, '$5') }
  let(:third_visitor) { Visitor.new('Penny', 64, '$15') }

  describe '#initialize' do
    it { is_expected.to be_instance_of described_class }

    it 'has a duration' do
      expect(carnival.duration).to eq(14)
    end

    it 'has no rides' do
      expect(carnival.rides).to eq([])
    end
  end

  describe '#add_ride' do
    it 'can add rides' do
      carnival.add_ride(first_ride)
      carnival.add_ride(second_ride)
      carnival.add_ride(third_ride)

      expect(carnival.rides).to eq([first_ride, second_ride, third_ride])
    end
  end
end
