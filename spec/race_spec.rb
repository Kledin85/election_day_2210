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
    candidate1 = race.register_candidate!({name: "Diana D", party: :democrat})
    #require 'pry'; binding.pry
    expect(candidate1.class).to eq(Candidate)
    expect(candidate1.name).to eq("Diana D")
    expect(candidate1.party).to eq(:democrat)
  end

  it 'can add candidates' do
    race = Race.new("Texas Governor")
    candidate1 = race.register_candidate!({name: "Diana D", party: :democrat})
    candidate2 = race.register_candidate!({name: "Roberto R", party: :republican})
    # candidate1.add_candidate
    # candidate2.add_candidate


    expect(race.candidates).to eq([candidate1, candidate2])
  end
end
