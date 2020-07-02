# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)
Flat.create!(
  name: 'Loft in Hampstead',
  address: '64 Heath St, London NW3 1DN',
  description: 'Loft on top of Argentian restaurant, 1 huge room with view on park.',
  price_per_night: 150,
  number_of_guests: 4
)
Flat.create!(
  name: 'The Japanese School',
  address: '87 Creffield Rd, London W3 9PU',
  description: 'Rest in unused classroom in our Japanese school in Acton',
  price_per_night: 300,
  number_of_guests: 8
)
Flat.create!(
  name: 'The Big Ben',
  address: 'Westminster, London SW1A 0AA, United Kingdom',
  description: 'Live the British dream and sejourn in the Big Ben itself (might be loud at times).',
  price_per_night: 1000,
  number_of_guests: 2
)
