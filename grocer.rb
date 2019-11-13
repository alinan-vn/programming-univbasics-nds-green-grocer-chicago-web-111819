#require 'pry'

def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  name 
  collection 
  #binding.pry 
   
  i = 0 
  while i < collection.length do 
    if collection[i][:item] == name 
      return collection[i]
    else 
      i += 1 
    end 
  end   
  
  
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  array = [] 
  i = 0 
  while i < cart.length do 
    new_item = find_item_by_name_in_collection(cart[i][:item], array)
    if new_item == true 
      new_item[:count] += 1 
    else  
      new_item = {
        :item => cart[i][:item],
        :price => cart[i][:price],
        :clearance => cart[i][:clearance],
        :count => 1 
      } 
      cart << new_item
    end 
    i += 1 
  end
  return array   
  
  
  
  # array = cart
  # i = 0 
  # while i < array.length do 
  #   k = 0
  #   while k < array.length do 
  #     if i = k
  #       array[i][:count] = 1 
  #       k += 1
  #     elsif array[i] == nil 
  #       k += 1  
  #     elsif array[i][:item] == array[k][:item]
  #       array[i][:count] += 1
  #       array[k] = nil 
  #       k += 1 
  #     else 
  #       k += 1 
  #     end
  #   end
  #   i += 1 
  # end 
  
  # array.compact
  # return array 
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
