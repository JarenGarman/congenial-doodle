# frozen_string_literal: true

require_relative 'spec_helper'

RSpec.describe Ride do
  subject(:first_ride) do
    described_class.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })
  end

  describe '#initialize' do
    it { is_expected.to be_instance_of described_class }
  end
end
