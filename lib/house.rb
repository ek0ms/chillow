class House < Dwelling
  attr_reader :asking_price
  
  def initialize(address, city_or_town, state, zipcode, asking_price)
    super(address, city_or_town, state, zipcode)
    @asking_price = asking_price
  end
end
