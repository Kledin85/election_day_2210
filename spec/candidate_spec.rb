require './lib/candidate'

RSpec.describe Candidate do

  it 'is a candidate' do
    diana = Candidate.new({name: "Diana D", party: :democrat})

    expect(diana).to be_a(Candidate)
  end

  it 'has a name' do
    diana = Candidate.new({name: "Diana D", party: :democrat})

    expect(diana.name).to eq("Diana D")
  end

  it 'has a party' do
    diana = Candidate.new({name: "Diana D", party: :democrat})

    expect(diana.party).to eq(:democrat)
  end

  it 'has no votes' do
    diana = Candidate.new({name: "Diana D", party: :democrat})

    expect(diana.votes).to eq(0)
  end

  it 'can count votes' do
    diana = Candidate.new({name: "Diana D", party: :democrat})

    diana.vote_for
    diana.vote_for
    diana.vote_for

    expect(diana.votes).to eq(3)
  end
end
