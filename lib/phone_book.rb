class PhoneBook
  def initialize
    @phonebook = []
  end

  def capture_number(text)
     text.scan(/[0-9]{11}/).each do |num|
        @phonebook << num
      end
    @phonebook.uniq!
    return @phonebook
  end

  def view
    @phonebook
  end

end