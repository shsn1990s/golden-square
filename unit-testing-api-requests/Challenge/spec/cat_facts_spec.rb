require 'cat_facts'

RSpec.describe CatFacts do
  it "calls provide method" do
    fake_requestor = double :requester
    sampledata = '{"fact":"Julius Ceasar, Henri II, Charles XI, and Napoleon were all afraid of cats.","length":74}'
    catfacts = CatFacts.new(fake_requestor)
    expect(fake_requestor).to receive(:get).with(URI("https://catfact.ninja/fact")).and_return(sampledata)
    expect(catfacts.provide).to eq ("Cat fact: Julius Ceasar, Henri II, Charles XI, and Napoleon were all afraid of cats.")
  end
end