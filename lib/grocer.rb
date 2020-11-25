require 'pry'

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.each do |grocery|
    if grocery[:item] == name
      return grocery
    end
  end
  return nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  cart_consolidated = []
  cart.each do |grocery|
    if not find_item_by_name_in_collection(grocery[:item], cart_consolidated)
      cart_consolidated.push grocery
      cart_consolidated[-1][:count] = 1
    else
      grocery[:count] += 1
    end
  end
  cart_consolidated
end
