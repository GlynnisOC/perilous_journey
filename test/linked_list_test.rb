require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require './lib/linked_list'

class Linked_listTest < Minitest::Test

  def setup
    @node = Node.new("Burke", nil)
    @list = Linked_list.new
  end

  def test_it_exists
    assert_instance_of Linked_list, @list
  end

  def test_its_head_begins_as_nil
    refute @list.head
  end

  def test_it_returns_the_nodes_new_surname
    assert_instance_of Node, @list.append("West")
  end

  def test_it_returns_list_with_node_and_next_node_shows_nil
    assert_instance_of Node, @list.append("West")
    refute @list.head.next_node
    assert_equal 1, @list.count
    assert_equal "The West family", @list.to_string
  end

  def test_it_is_keeping_track_of_nodes
    @list.append("West")
    @list.append("Rhodes")
    assert_equal @node, @list.head
    refute @list.head.next_node
    @list.append("Hardy")
  end
end

# > list.append("Hardy")
# => => <Node @surname="Hardy" @next_node=nil #5678904567890>
# > list.head.next_node
# => <Node @surname="Hardy" @next_node=nil #5678904567890>
# > list.count
# => 2
# > list.to_string
# => "The Rhodes family, followed by the Hardy family"
