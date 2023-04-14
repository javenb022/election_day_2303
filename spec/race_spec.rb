require './lib/candidate'
require './lib/race'

RSpec.describe Race do
  before(:each) do
    @race = Race.new("Texas Governor")
  end

  describe '#initialize' do
    it 'exists' do

      expect(@race).to be_a(Race)
    end
  end

  describe '#can read attributes' do
    it 'can call on the office of the race' do
      
      expect(@race.office).to eq("Texas Governor")
    end

    it 'can call on the candidates in the race' do

      expect(@race.candidates).to eq([])
    end
  end

  describe '#registers candidates in the race' do
    xit 'registers a candidate' do
      
      @candidate1 = @race.register_candidate!({name: "Diana D", party: :democrat})

      expect(@race.register_candidate!({name: "Diana D", party: :democrat})).to eq()
    end

    it 'calls on class of candidate1' do

      @candidate1 = @race.register_candidate!({name: "Diana D", party: :democrat})

      expect(@candidate1.class).to eq(Candidate)
    end

    it 'calls on the name of candidate1' do

      @candidate1 = @race.register_candidate!({name: "Diana D", party: :democrat})

      expect(@candidate1.name).to eq("Diana D")
    end

    it 'calls on the party of candidate1' do

      @candidate1 = @race.register_candidate!({name: "Diana D", party: :democrat})

      expect(@candidate1.party).to eq(:democrat)
    end

    it 'registers a second candidate' do

      @candidate1 = @race.register_candidate!({name: "Diana D", party: :democrat})
      @candidate2 = @race.register_candidate!({name: "Roberto R", party: :republican})
      
      expect(@race.candidates).to eq([@candidate1, @candidate2])
    end
  end
end