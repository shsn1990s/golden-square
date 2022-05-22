require 'phone_book'

RSpec. describe PhoneBook do
  it "captures telephone number" do
    phonebook = PhoneBook.new
    phonebook.capture_number("07700000000")
    expect(phonebook.view).to eq ["07700000000"]
  end
  it "captures telephone number within text" do
    phonebook = PhoneBook.new
    phonebook.capture_number("The number is 07700000000")
    expect(phonebook.view).to eq ["07700000000"]
  end
  it "captures telephone number within text" do
    phonebook = PhoneBook.new
    phonebook.capture_number("The number is 07700000000 or 07700000001")
    expect(phonebook.view).to eq ["07700000000", "07700000001"]
  end
  it "captures telephone number within text" do
    phonebook = PhoneBook.new
    phonebook.capture_number("The number is 07700000000")
    phonebook.capture_number("The number is 07700000000")
    expect(phonebook.view).to eq ["07700000000"]
  end
end