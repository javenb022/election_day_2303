require './lib/candidate'
require './lib/race'

RSpec.describe Race do
  before(:each) do
    race = Race.new("Texas Governor")
  end

  describe '#initialize' do
    it 'exists' do

      expect(race).to be_a(Race)
    end
  end
end