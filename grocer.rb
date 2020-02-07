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
  
  # Checks for matching :item values of input hash against an array
  # Returns index number if match is found, else returns nil
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
    if item_index(cart_item,output) # item_index returns truthy value
      output[item_index(cart_item,output)][:count] += 1 # Iterate the value of :count at that index
    else # item_index was falsy, so add item to output with :count => 1
      cart_item[:count] = 1
      output << cart_item
    end
  i += 1 
  end
  output  
end

def apply_coupons(cart, coupons)
  i = 0
  while i < cart.length do # Iterate over cart 
    cart_item = cart[i]
    j = 0
    while j < coupons.length do # Iterate over coupons
      coupon = coupons[j]
      if coupon[:item] == cart_item[:item] && cart_item[:count] >= coupon[:num] # Coupon match found
        cart_item[:count] -= coupon[:num] # Remove discounted items from undiscounted count
        couponed_item = { :item => "#{cart_item[:item]} W/ COUPON", :price => coupon[:cost] / coupon[:num], :clearance => cart_item[:clearance], :count => coupon[:num]}
        cart << couponed_item
      end
      j += 1 
    end
    i += 1 
  end
  cart
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
