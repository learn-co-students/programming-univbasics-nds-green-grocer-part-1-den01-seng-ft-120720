require "pry"

def find_item_by_name_in_collection(name, collection)
  
  collection.each do |item|
    return item if item[:item]==name
  end
nil

end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  
index = 0 
new_cart = []

  cart.each do |item|
   current_item = find_item_by_name_in_collection(item[:item], new_cart)
   if current_item
     new_cart_index = 0 
     new_cart.each do |new_cart_item|
       if new_cart_item[:item] === current_item[:item]
         new_cart_item[:count] += 1 
       end
       new_cart_index += 1 
     end
   else
     item[:count] = 1 
     new_cart << item
   end
   index += 1
         
  end
  new_cart
end


  