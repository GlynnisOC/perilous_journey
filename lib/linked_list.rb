class Linked_list
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(surname)
    @surname = surname
    Node.new(@surname)
  end
end
