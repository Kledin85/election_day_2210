class Race
  attr_reader :office,
              :candidates

  def initialize(office)
    @office     = office
    @candidates = []
  end

  def register_candidate!(candidate)
    Candidate.new(candidate)
    @candidates << candidate
  end

  # def add_candidate(candidate)
  #   @candidates << candidate
  # end

end
