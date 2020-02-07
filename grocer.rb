def find_item_by_name_in_collection(name, collection)
  # Loop over hashes in array to find the hash with value of :item matching name, then return that hash
  i = 0
  while i < collection.length do 
    if collection[i][:item] == name
      return collection[i]
    end
  i += 1
  end
end

def consolidate_cart(cart)
  output = []
  
  # Return a boolean to check if cart item with matching name already exists in output
  def item_index(item,array)
    index = 0
    while index < array.length do 
       if item[:item] == array[index][:item]
         result = index
         break
       end
      index += 1 
    end
    result
  end
  
  i = 0 # Iterate over each hash in the cart array
  while i < cart.length do 

    cart_item = cart[i]
    
    if item_index(cart_item,output)
      output[item_index(cart_item)][:count] += 1
    else
      cart_item[:count] = 1
      output << cart_item
    end
    
  i += 1 
  end
  output  
end

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
