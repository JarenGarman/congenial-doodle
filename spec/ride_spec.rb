# frozen_string_literal: true

require_relative 'spec_helper'

RSpec.describe Ride do
  subject(:first_ride) do
    described_class.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })
  end

  describe '#initialize' do
    it { is_expected.to be_instance_of described_class }

    it 'has a name' do
      expect(first_ride.name).to eq('Carousel')
    end

    it 'has a minimum height' do
      expect(first_ride.min_height).to eq(24)
    end

    it 'has an admission fee' do
      expect(first_ride.admission_fee).to eq(1)
    end

    it 'has an excitement level' do
      expect(first_ride.excitement).to eq(:gentle)
    end

    it 'has no revenue' do
      expect(first_ride.total_revenue).to eq(0)
    end
  end
end
