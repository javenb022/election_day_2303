class Election
  attr_reader :year,
              :races,
              :candidates,
              :vote_counts
  def initialize(year)
    @year         = year
    @races        = []
    @candidates   = []
    @vote_counts  = {}
  end

  def add_race(race)
    @races << race
  end

  def add_candidate(candidate)
    @vote_counts[candidate] = 0
    @candidates << candidate
  end

  def add_up_votes(candidate)
    @vote_counts[candidate] += candidate.votes
    candidate.votes
  end
end