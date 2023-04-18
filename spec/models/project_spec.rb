require 'spec_helper'

RSpec.describe Project, type: :model do
  describe 'associations' do
    it { should have_many(:comments)}
  end
end
