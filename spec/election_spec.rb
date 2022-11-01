require './lib/candidate'
require './lib/race'
require './lib/election'

RSpec.describe Election do

  it 'has a year' do
    election = Election.new('2022')

    expect(election.year).to eq('2022')
  end
end
