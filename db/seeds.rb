# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

trains = Train.create([
  {
    name: "Train 1",
    uuid: "as12as-daw51-12dawd",
    lat: 59.913869,
    lng: 10.752145
  },
  {
    name: "Train 2",
    uuid: "1s42as-daw51-12dawd",
    lat: 59.913869,
    lng: 10.752245
  },
  {
    name: "Train 3",
    uuid: "as12as-wag51-12dawd",
    lat: 59.913869,
    lng: 10.752345
  },
])

rpis = Rpi.create([
  {
    lat: 59.913869,
    lng: 10.752245
  },
  {
    lat: 59.913869,
    lng: 10.753245
  },
  {
    lat: 59.913869,
    lng: 10.754245
  }
])
r = Random.new
trains.each do | train |
  rpis.each do | rpi |
    10.times do |i|
      TrainStatus.create(
        rpi: rpi,
        train: train,
        major: "9001",
        minor: "2",
        measured_power: r.rand(-100...100),
        rssi: r.rand(-100...100),
        accuracy: r.rand(0.0...10.0),
        proximity: ['near', 'far', 'intermediate'].sample
      )
    end
  end
end
