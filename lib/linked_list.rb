require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def nth_from_end(n)
    # if n < 1 || !self.head
    #   return nil
    # end
    # node_array = []
    # current_node = self.head
    # while current_node.next_node
    #   node_array << current_node
    #   current_node = current_node.next_node
    # end
    # node_array << current_node
    # if n > node_array.length
    #   return nil
    # end
    # index = node_array.length - (n)
    # node_array[index].value

    # if n < 1 || !self.head
    #     return nil
    # end
    # fast = self.head
    # slow = self.head
    # (n-1).times do
    #   if !fast.next_node
    #     return nil
    #   end
    #   fast = fast.next_node
    # end
    # while fast.next_node
    #   fast = fast.next_node
    #   slow = slow.next_node
    # end
    # slow.value

    if n < 1 || !self.head
      return nil
    end
    count = 1
    fast = self.head
    slow = self.head
    while fast.next_node
      fast = fast.next_node
      count += 1
      if n < count
        slow = slow.next_node
      end
    end
    if count < n
      return nil
    end
    slow.value
  end

end
