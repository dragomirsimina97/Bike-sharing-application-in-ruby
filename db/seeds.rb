# Seed the RottenPotatoes DB with some bikes.
more_bikes = [
  {:Bike_ID => 'Bike_0001',:State => 'Free', :Station => 'Vivo',
    :Time => '25-Nov-2019'}
]

more_bikes.each do |bik|
  Bike.create!(bik)
end