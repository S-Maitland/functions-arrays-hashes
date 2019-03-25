def pet_shop_name (array)
  return array[:name]
end

def total_cash(array)
  return array[:admin][:total_cash]
end

def add_or_remove_cash(array, amount)
  array[:admin][:total_cash] += amount
end

def pets_sold(array)
  return array[:admin][:pets_sold]
end

def increase_pets_sold(array, amount)
  array[:admin][:pets_sold] += amount
end

def pets_sold(array)
  return array[:admin][:pets_sold]
end

def stock_count(array)
  return array[:pets].count
end

def pets_by_breed(array, breed)
  pets_by_breed = []
  for pet in array[:pets]
    if pet[:breed] == breed
      pets_by_breed.push(pet)
    end
  end
  return pets_by_breed
end

def find_pet_by_name(array, name)
  for pet in array[:pets]
    if pet[:name] == name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(array, name)
  for pet in array[:pets]
    if pet[:name] == name
      array[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(array, pet)
  array[:pets].push(pet)
end

def customer_cash(customer)
  customer[:cash]
end

def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
end

def customer_pet_count(customer)
  customer[:pets].count
end

def add_pet_to_customer(customer, pet)
  customer[:pets].push(pet)
end

def customer_can_afford_pet(customer, pet)
  return customer[:cash] >= pet[:price]
end

def sell_pet_to_customer(petShop, pet, customer)
  if pet != nil && customer_can_afford_pet(customer, pet)
    remove_customer_cash(customer, pet[:price])
    add_pet_to_customer(customer, pet)
    add_or_remove_cash(petShop, pet[:price])
    increase_pets_sold(petShop, 1)
  end
end
