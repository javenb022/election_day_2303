class Candidate
  attr_reader :name, 
              :party,
              :votes
  def initialize(profile)
    @profile = 
      @name   = profile[:name],
      @party  = profile[:party]
      @votes  = 0
  end

  def vote_for!
    @votes += 1
  end
end