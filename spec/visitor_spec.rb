# frozen_string_literal: true

require_relative 'spec_helper'

RSpec.describe Visitor do
  subject(:first_visitor) { described_class.new('Bruce', 54, '$10') }

  describe '#initialize' do
    it { is_expected.to be_instance_of described_class }
  end
end
