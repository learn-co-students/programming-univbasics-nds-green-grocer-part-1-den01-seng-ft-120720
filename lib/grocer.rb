
def find_item_by_name_in_collection(name, collection)
  collection.find do |item|
     item.find do |item_key, item_name|
       if item_name == name
         return item
       end
     end
  end
  
end

def consolidate_cart(cart)
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
