require_relative 'dwelling'

class Apartment < Dwelling
  include Addition
  attr_reader :rent, :lease_start_date, :lease_end_date, :physical_capacity, :max_capacity

  def initialize(address, city_or_town, state, zipcode, rent, lease_start_date, lease_end_date)
    super(address, city_or_town, state, zipcode)
    @rent = rent
    @lease_start_date = Date.parse(lease_start_date)
    @lease_end_date =  Date.parse(lease_end_date)
    @physical_capacity = []
    @max_capacity = 3
  end

  # def full?
  #   @tenants.size == 3
  # end
  #
  # def add_roomate(occupant)
  #   if @tenants.size < 3
  #     @tenants << occupant
  #   else
  #     "Apartment is full!"
  #   end
  # end
  #
  # def remove_roomate(occupant)
  #   if @tenants.include?(occupant)
  #     @tenants.delete(occupant)
  #   else
  #     "That person doesn't live here!"
  #   end
  # end
end
