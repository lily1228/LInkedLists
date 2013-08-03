class Node

 def initialize
   @next=nil 
   @name=''
 end

 def next=(node)
   @next=node
 end
 
 def next
   return @next
 end
 
 def name=(nodename)
   @name=nodename
 end
 
 def name
   return @name
 end
 
 def to_s
   return @name
 end

end

class List
  
  attr_accessor :first 
  
  def initialize(length)
    prevNode=nil
    first=nil
    length.times do |num|
      node=Node.new
      first=node if first==nil
      node.name="node: #{num}"
      prevNode.next=node if prevNode!=nil
      prevNode=node
    end
    @first=first
  end
  
  def length
    return 0 if first==nil
    count=1
    node=first 
    while node.next!=nil do 
      node=node.next
      count+=1
    end
    
    return count
  end
  
  def to_s
    
    return 'empty' if first==nil
    node=first
    string=first.to_s
    
    while node.next!=nil do
      node=node.next
      string<<"; "<<node.to_s
    end  
    
    return string
  end
  
end


myList=List.new(10)
puts myList.length
puts myList





  