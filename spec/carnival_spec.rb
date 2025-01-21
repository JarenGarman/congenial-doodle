# frozen_string_literal: true

require_relative 'spec_helper'

RSpec.describe Carnival do
  subject(:carnival) { described_class.new(14) }

  describe '#initialize' do
    it { is_expected.to be_instance_of described_class }
  end
end
