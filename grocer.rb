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
  def is_new_item(item)
    result = false
    if output[item][:item]
      result = true
    end
    result
  end
  
  i = 0 # Iterate over each hash in the cart array
  while i < cart.length do 

    if is_new_item(cart[i])
      # Item not added yet, push hash into output with count set to 1
      cart[i][:count] = 1
      output << cart[i]
    else
      # Item already exists, find index and iterate count value for that item in output
      j = 0
      while j < output.length do
        if output[j][:item == cart[i][:item]
          output[j][:count] += 1
          break
      j += 1 
      end
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
