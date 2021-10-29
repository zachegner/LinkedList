require_relative "linkedlist.rb"

l = LinkedList.new
l.append(3)
l.append(2)
l.append(6)
l.prepend("Tommy")
l.append("Hello")
l.prepend("abc123")
l.pop

puts "#{l.to_s}\n\n"
puts "Size: #{l.size}\n\n"
puts "Head: #{l.head}\n\n"
puts "Tail: #{l.tail}\n\n"
puts "node at index[2]: #{l.at(2).to_str}\n\n"
puts "node at index[4]: #{l.at(4).to_str}\n\n"
puts "Contains \"Tommy\"? #{l.contains?("Tommy")}\n\n"
puts "Contains 6? #{l.contains?(6)}\n\n"

puts "Find abc123: index(#{l.find("abc123")})\n\n"
puts "Find 3: index(#{l.find(3)})\n\n"
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n\n"

l.insert_at(10, 3)
l.remove_at(1)

puts "\n\n#{l.to_s}\n\n"
puts "Size: #{l.size}\n\n"
puts "Head: #{l.head}\n\n"
puts "Tail: #{l.tail}\n\n"
puts "node at index[2]: #{l.at(2).to_str}\n\n"
puts "node at index[4]: #{l.at(4).to_str}\n\n"
puts "Contains 10? #{l.contains?(10)}\n\n"
puts "Contains \"Tommy\"? #{l.contains?("Tommy")}\n\n"
