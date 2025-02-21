require './lib/candidate'

RSpec.describe Candidate do
  describe '#initialize' do
    it 'exists' do

      diana = Candidate.new({name: "Diana D", party: :democrat})

      expect(diana).to be_a(Candidate)
    end
  end

  describe '#can call name, party, and votes' do
    it 'calls on candidate name' do

      diana = Candidate.new({name: "Diana D", party: :democrat})

      expect(diana.name).to eq("Diana D")
    end

    it 'calls on candidate party' do

      diana = Candidate.new({name: "Diana D", party: :democrat})

      expect(diana.party).to eq(:democrat)
    end

    it 'calls on number of votes for candidate' do

      diana = Candidate.new({name: "Diana D", party: :democrat})

      expect(diana.votes).to eq(0)
    end
  end

  describe '#can vote for a candidate' do
    it 'votes for a candidate' do

      diana = Candidate.new({name: "Diana D", party: :democrat})

      diana.vote_for!
      diana.vote_for!
      diana.vote_for!

      expect(diana.votes).to eq(3)

      diana.vote_for!

      expect(diana.votes).to eq(4)
    end
  end
end