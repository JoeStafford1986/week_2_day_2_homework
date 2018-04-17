class Bear

  attr_reader(:name)

  def initialize(name)
    @name = name
    @stomach = []
  end

  def count_fish_in_stomach()
    return @stomach.count()
  end



end
