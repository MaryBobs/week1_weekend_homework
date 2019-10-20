def pet_shop_name(shop)
  p shop[:name]
end

def total_cash(shop)
  shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, cash)
  balance = shop[:admin][:total_cash] + cash
  shop[:admin][:total_cash] = balance
end

def pets_sold(shop)
  shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, sold_pets)
  num_pets_sold = shop[:admin][:pets_sold] + sold_pets
  shop[:admin][:pets_sold] = num_pets_sold
end

def stock_count(shop)
  shop[:pets].count()
end

def pets_by_breed(shop, breed_type)
  result = []
  for pet in shop[:pets]
    result.push(pet) if(pet[:breed] == breed_type)
  end
  return result
end

def find_pet_by_name(shop, pet_name)
  for pet in shop[:pets]
    if (pet[:name] == pet_name)
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(shop, pet_to_remove)
  result = []
  for pet in shop[:pets]
    result << shop[:pets].delete(pet) if(pet[:name] == pet_to_remove)
    end
return result
end

def add_pet_to_stock(shop, new_pet)
  shop[:pets].push(new_pet)
end

def customer_cash(customer)
  customer[:cash]
end

def remove_customer_cash(customer, cash_to_remove)
  balance = customer[:cash] - cash_to_remove
  customer[:cash] = balance
end

def customer_pet_count(customer)
  customer[:pets].count
end

def add_pet_to_customer(customer, pet_to_add)
  customer[:pets].push(pet_to_add)
end

def customer_can_afford_pet(customer, pet_to_buy)
  if customer[:cash] >= pet_to_buy[:price]
    return true
  elsif customer[:cash] < pet_to_buy[:price]
    return false
  end
end
