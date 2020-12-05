
def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.find do |item|
     item.find do |item_key, item_name|
       if item_name == name
         return item
       end
     end
  end
  
end

def consolidate_cart(cart)
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  number_items = 0
  consolidated_cart = []
  
  cart.each do |item|
    if !consolidated_cart.include? item
      item[:count] = 1  
      consolidated_cart << item
    else
      name = item[:item]
      find_item_by_name_in_collection(name, consolidated_cart)[:count] += 1
    end
  end
  
  consolidated_cart
end
