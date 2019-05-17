class Linked_list
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(surname)
    @head = Node.new(surname) if @head == nil
  end

  def count
    if @head == nil
      0
    else
      1
    end
  end

  def to_string
    "The #{@head.surname} family"
  end
end
