require './lib/candidate'
require './lib/race'
require './lib/election'

RSpec.describe Election do
  before(:each) do
    @election = Election.new("2024")
  end

  describe '#initialize' do
    it 'exists' do

      expect(@election).to be_a(Election)
    end
  end

  describe '#reads attributes' do
    it 'calls on year of election' do

      expect(@election.year).to eq("2024")
    end

    it 'calls on races in the election' do

      expect(@election.races).to eq([])
    end

    it 'calls on all candidates in the election' do

      expect(@election.candidates).to eq([])
    end

    it 'calls on all votes in the election' do

      expect(@election.vote_counts).to eq({})
    end
  end

  describe '#adds races to the election' do
    it 'adds a race to the election' do

      @race1 = Race.new("Texas Governor")

      expect(@election.add_race(@race1)).to eq([@race1])
    end

    it 'calls on the races in the election' do

      @race1 = Race.new("Texas Governor")

      @election.add_race(@race1)

      expect(@election.races).to eq([@race1])
    end
  end

  describe '#adds candidate to election' do
    it 'adds a candidate into the election' do

      @candidate1 = Candidate.new({name: "Diana D", party: :democrat})

      expect(@election.add_candidate(@candidate1)).to eq([@candidate1])

      @candiate2 = Candidate.new({name: "Roberto R", party: :republican})

      expect(@election.add_candidate(@candidate2)).to eq([@candidate1, @candidate2])
    end
  end

  describe '#counts all votes for all candidates' do
    it 'counts the votes for each candidate' do

      @candidate1 = Candidate.new({name: "Diana D", party: :democrat})
      @candidate2 = Candidate.new({name: "Roberto R", party: :republican})
      @election.add_candidate(@candidate1)
      @election.add_candidate(@candidate2)

      @candidate1.vote_for!
      @candidate1.vote_for!
      @candidate1.vote_for!
      @candidate1.vote_for!

      expect(@election.add_up_votes(@candidate2)).to eq(0)

      @candidate2.vote_for!
      @candidate2.vote_for!
      @candidate2.vote_for!
      @candidate2.vote_for!
      @candidate2.vote_for!
      @candidate2.vote_for!

      expect(@election.add_up_votes(@candidate1)).to eq(4)
      expect(@election.add_up_votes(@candidate2)).to eq(6)
    end
  end
end