require 'grammar'

RSpec.describe "check-grammar method" do
  it "Returns false if this text is sent one two three!" do
    grammar = Grammar.new
    result = grammar.checkgrammar("one two three!")
    expect(result).to eq false
  end
  it "Returns true if this text is sent one two three!" do
    grammar = Grammar.new
    result = grammar.checkgrammar("One two three!")
    expect(result).to eq true
  end
  it "Returns false if this text is sent one two three/" do
    grammar = Grammar.new
    result = grammar.checkgrammar("one two three/")
    expect(result).to eq false
  end
  it "Returns true if this text is sent Hello." do
    grammar = Grammar.new
    result = grammar.checkgrammar("Hello.")
    expect(result).to eq true
  end
  it "Returns true if this text is sent Hello, how are you?" do
    grammar = Grammar.new
    result = grammar.checkgrammar("Hello, how are you?")
    expect(result).to eq true
  end
  it "Returns false if this text is sent Hello, how are you?" do
    grammar = Grammar.new
    result = grammar.checkgrammar("Hello, how are you")
    expect(result).to eq false
  end
  it "Returns false if this text is sent hello, how are you?" do
    grammar = Grammar.new
    result = grammar.checkgrammar("hello, how are you")
    expect(result).to eq false
  end
end