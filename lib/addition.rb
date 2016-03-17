module Addition

  def full?
    @physical_capacity.size == max_capacity
  end

  def add_one(object)
    if !full?
      @physical_capacity << object
    else
      "There's no room for that!"
    end
  end

  def remove_one(object)
    if @physical_capacity.include?(object)
      @physical_capacity.delete(object)
    else
      "It ain't here!"
    end
  end
end
