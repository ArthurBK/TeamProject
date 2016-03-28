# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Bike.create( brand: 'Vespa', model: 'S', year: '2000', displacement: '50cm3', bike_type: 'scooter', rating: 4, mileage: '7000km', description: '')
Bike.create( brand: 'Solex', model: '3300', year: '1982', displacement: '50cm3', bike_type: 'moped', rating: 2, mileage: '2500km', description:  '')
Bike.create( brand: 'Yamaha', model: 'DT', year: '2005', displacement: '125cm3', bike_type: 'motorcycle', rating: 4, mileage:'300km', description: '' )
Bike.create( brand: 'BMW', model: 'nine-T', year: '2014', displacement: '1200cm3', bike_type: 'motorcycle', rating: 5, mileage: '10000km', description: '' )
Bike.create( brand: 'Vespa', model: 'S', year: '2000', displacement: '50cm3', bike_type: 'scooter', rating: 3, mileage: '800km', description: '' )
User.create( email: 'laszlo@yahoo.fr')
User.create( email: 'arthur@wanadoo.fr')
User.create( email: 'alexis@gmail.be')
Profile.create( name: 'Laszlo', address: 'Chaussée de Waterloo 1165C, 1180 Bruxelles', phone_number: '0153783929')
Profile.create( name: 'Arthur', address: 'Rue du Faubourg Saint-Honoré, 75006 Paris', phone_number: '0167038208')
Profile.create( name: 'Alexis', address: 'Rue de Suisse, 1060 Saint-Gilles', phone_number: '0137293638')
