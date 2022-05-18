require 'password_checker'

RSpec.describe PasswordChecker do
  it "Returns true if the password is 8 characters or more" do
    password = PasswordChecker.new
    expect(password.check("12345678")).to eq true
  end
  it "Fails if the password is less than 8 characters" do
    password = PasswordChecker.new
    expect { password.check("1234567")}.to raise_error "Invalid password, must be 8+ characters"
  end
end
