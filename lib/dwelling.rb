class Dwelling
  attr_reader :address, :city_or_town, :state, :zipcode

  def initialize(address, city_or_town, state, zipcode)
    @address = address
    @city_or_town = city_or_town
    @state = state
    @zipcode = zipcode
  end
end
