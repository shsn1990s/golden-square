require 'present'

RSpec.describe Present do
  it "Fails when contents has already been wrapped." do
    present = Present.new
    present.wrap("Present")
    expect { present.wrap("Present 2") }.to raise_error "A contents has already been wrapped."
  end
  
  it "Fails when no contents have been wrapped" do
    present = Present.new
    expect { present.unwrap() }.to raise_error "No contents have been wrapped."
  end
  
  it "Unwraps present correctly" do
    present = Present.new
    present.wrap("Present")
    expect(present.unwrap).to eq "Present"
  end

end