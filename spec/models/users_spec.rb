require 'rails_helper'

RSpec.describe User, type: :model do
  describe '.new' do
    it 'instantiates a User object' do
      u = User.new
      expect(u.is_a?(User)).to be true
      expect(u.attributes.keys.count).to eql(15)
    end
  end
end

