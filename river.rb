class River

  attr_reader(:name)

  def initialize(name, fish)
    @name = name
    @fish = fish
  end

  def count_fish
    return @fish.count()
  end
end
