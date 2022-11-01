require './lib/candidate'
require './lib/race'

RSpec.describe Race do

  it 'has an office' do
    race = Race.new("Texas Governor")

    expect(race.office).to eq("Texas Governor")
  end

  it 'has no candidates' do
    race = Race.new("Texas Governor")

    expect(race.candidates).to eq([])
  end

  it 'can register candidates' do
    race = Race.new("Texas Governor")
    #diana = Candidate.new({name: "Diana D", party: :democrat})
    candidate1 = race.register_candidate!({name: "Diana D", party: :democrat})

    expect(candidate1.class).to be_a(Candidate)
  end
end
