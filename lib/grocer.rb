require "pry"

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  
  
  output = nil
  collection.each do |key|
    key.each do |veg, value|
      #binding.pry
      if value == name
        output = key
        #binding.pry
      end
    end
  end
  output
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  output = []
  index = 0

  while index < cart.size do
    current_item = cart[index]
    if find_item_by_name_in_collection(current_item[:item], output) == nil
      current_item[:count] = 1
      output.push(current_item)
    else
      count = 0
      while count < output.size do
        item = output[count]
        if item[:item] == current_item[:item]
          item[:count] += 1 
        end
        count += 1
      end
    end
    index += 1
  end
  output
end



  