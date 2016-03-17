class Box
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def owner
    "#{name.first_name} #{name.last_name}"
  end
end
