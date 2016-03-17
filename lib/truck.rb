class Truck
  include Addition
  attr_reader :max_capacity, :physical_capacity

  def initialize(max_capacity)
    @max_capacity = max_capacity
    @physical_capacity = []
  end

  # def full?
  #   @physical_capacity.size == max_capacity
  # end
  #
  # def add_box(box)
  #   if !full?
  #     @physical_capacity << box
  #   else
  #     "There's no room for your box!"
  #   end
  # end
  #
  # def remove_box(box)
  #   if @physical_capacity.include?(box)
  #     @physical_capacity.delete(box)
  #   else
  #     "That box isn't here!"
  #   end
  # end

  def unload_all(occupant)
    unloaded_array = []
    @physical_capacity.each do |box|
      if box.name == occupant
        unloaded_array << box
        @physical_capacity.delete(box)
      end
    end

    if unloaded_array.empty?
      "That person doesn't have any boxes!"
    end
  end

end
