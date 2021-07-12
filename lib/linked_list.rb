class LinkedList
    # Allows LinkedList.head to be called
    attr_reader(:head)

    def initialize(head_node = nil)
        @head = head_node
    end

    def append(value)
        # adds a new node containing value to the end of the list
        current_node = @head
        until current_node.next_node == nil
            current_node = current_node.next_node
        end
        current_node.next_node = Node.new(value)
    end

    def prepend(value)
        # adds a new node containing value to the start of the list
        new_head = Node.new(value, @head)
        @head = new_head
    end

    def size
        count = 1
        current_node = @head
        until current_node.next_node == nil
            current_node = current_node.next_node
            count += 1
        end
        count
    end
    
    def tail
        current_node = @head
        until current_node.next_node == nil
            current_node = current_node.next_node
        end
        current_node
    end

    def at(index)
        current_index = 0
        current_node = @head
        until current_index == index
            return Node.new() if current_node.next_node == nil
            current_node = current_node.next_node
            current_index += 1
        end
        current_node
    end
end

class Node
    attr_accessor(:value, :next_node)

    def initialize(value = nil, next_node = nil)
        @value = value
        @next_node = next_node
    end
end