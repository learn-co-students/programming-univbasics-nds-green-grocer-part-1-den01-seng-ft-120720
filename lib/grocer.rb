def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
counter = 0 
while counter < collection.length 
if collection[counter][:item] == name
  return collection[counter]
end
counter += 1 
end
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
index = 0
new_cart = []
  cart.each do |grocery_item|
    item = find_item_by_name_in_collection(grocery_item[:item], new_cart)
    if item
      new_cart_index = 0
      new_cart.each do |new_cart_item|
        if new_cart_item[:item] === item[:item]
          new_cart_item[:count] += 1
        end
        new_cart_index += 1
      end
    else
      grocery_item[:count] = 1
      new_cart << grocery_item
    end
    index += 1
  end
  new_cart
end