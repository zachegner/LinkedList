require_relative "node.rb"

class LinkedList
    

    def initialize 
        @head = nil
        @tail = nil
    end

    def append(value)
        node = Node.new(value)
        #if @head is true, @head = @head else @head = node
        @head || @head = node

        !@tail ? @tail = node : @tail.next_node = node

        @tail = node
    end

    def prepend(value)
        node = Node.new(value, @head)
        @head = node
    end

    def size
        count = 1
        current_node = @head
        while current_node.next_node != nil
            current_node = current_node.next_node
            count += 1
        end
        count
    end

    def head
        return @head.to_str
    end

    def tail
        return @tail.to_str
    end

    def to_s
        current_node = @head
        while current_node != nil
            print "#{current_node.to_str} -> "
            current_node = current_node.next_node
        end
        return "nil"
    end

    def at(idx)
        count = 0
        current_node = @head
        until count == idx
            current_node = current_node.next_node
            count += 1
        end
        return current_node.to_str
    end

    def pop
        current_node = @head
        until current_node.next_node == @tail
            current_node = current_node.next_node
        end
        current_node.next_node = nil
        @tail = current_node
    end

    def contains?(value)
        return true if @tail.value == value

        current_node = @head
        until current_node == @tail
            if current_node.value == value
                return true
            else
            current_node = current_node.next_node
            end
        end   
    end

    def find(value)
        if self.contains?(value) == true
            count = 0
            current_node = @head
            until current_node.value == value
                current_node = current_node.next_node
                count += 1
            end
            return count
        else
            return nil
        end
    end
end