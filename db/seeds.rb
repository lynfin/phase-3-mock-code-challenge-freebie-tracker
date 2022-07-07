# puts 'Creating companies...'
# Company.create(name: 'Google', founding_year: 1998)
# Company.create(name: 'Facebook', founding_year: 2004)
# Company.create(name: 'Dunder Mifflin', founding_year: 2002)
# Company.create(name: 'Enron', founding_year: 1995)

# puts 'Creating devs...'
# Dev.create(name: 'Rick')
# Dev.create(name: 'Morty')
# Dev.create(name: 'Mr. Meseeks')
# Dev.create(name: 'Gazorpazop')

puts 'Creating freebies...'

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
25.times do
  Freebie.create(item_name: Faker::Food.unique.dish, value: rand(1..20), company_id: rand(1..4), dev_id: rand(1..4))
end
puts 'Seeding done!'
