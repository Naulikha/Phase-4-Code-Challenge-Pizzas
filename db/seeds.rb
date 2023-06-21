5.times do 
    Restaurant.create(
        name: Faker::Restaurant.name,
        address: Faker::Address.full_address
    )
end

5.times do 
    Pizza.create(
        name: Faker::Food.dish,
        ingredients: Faker::Food.description
    )
end

Restaurant.all.each do |restaurant|
    rand(1..3).times do 
        Restaurantpizza.create(
            restaurant_id: restaurant.id,
            pizza_id: Pizza.pluck(:id).sample,
            price: rand(1..30)
        )
    end
end