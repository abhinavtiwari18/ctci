#!/bin/ruby

require 'json'
require 'stringio'

class SinglyLinkedListNode
  attr_accessor :data, :next

  def initialize node_data
    @data = node_data
    @next = nil
  end
end

class SinglyLinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def insert_node node_data
    node = SinglyLinkedListNode.new node_data

    if not self.head
      self.head = node
    else
      self.tail.next = node
    end

    self.tail = node
  end
end

def print_singly_linked_list node, sep, fptr
  while node != nil
    fptr.write node.data

    node = node.next

    fptr.write sep if node != nil
  end
end


# ========================================================================================================================


# Complete the insertNodeAtPosition function below.

#
# For your reference:
#
# SinglyLinkedListNode
#     int data
#     SinglyLinkedListNode next
#
#
def insertNodeAtPosition(llist, data, position)
  tracked_node = llist
  new_node = SinglyLinkedListNode.new data

  unless llist
    return new_node
  end
  if position == 0
    new_node.next = llist
    return new_node
  end

  current_position = 0
  current_node = llist
  while(current_position !=  position - 1 && llist.next != nil)
    current_node = current_node.next
    current_position += 1
  end
  node_at_position = current_node.next
  current_node.next = new_node
  new_node.next = node_at_position

  return tracked_node

end



# ========================================================================================================================

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

llist = SinglyLinkedList.new

gets.to_i.times do
  llist_item = gets.to_i
  llist.insert_node llist_item
end

data = gets.to_i

position = gets.to_i

llist_head = insertNodeAtPosition llist.head, data, position

print_singly_linked_list llist_head, " ", fptr
fptr.write "\n"

fptr.close()
