# Modify the class to support the module Enumerable: 

class Tree
  include Enumerable # provides access to the methods in Enumerable
  
  def each # this each method should yield each member of a collection, one at a time
    ...
  end
end