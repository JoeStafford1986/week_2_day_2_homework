class River

  attr_reader(:name)

  def initialize(name)
    @name = name
    @fish = []
  end

  def count_fish()
    return @fish.count()
  end

  def add_multiple_fish(fish_stock)
    for fish in fish_stock
    @fish.push(fish_stock)
  end
  end


end
