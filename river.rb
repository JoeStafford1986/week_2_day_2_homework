class River

  attr_reader(:name)

  def initialize(name)
    @name = name
    @fish = []
  end

  def count_fish()
    return @fish.count()
  end

  def add_fish(new_fish)
    @fish.push(new_fish)
  end

  def lose_fish()
    return @fish.pop() if @fish.count != 0
  end


end
