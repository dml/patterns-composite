class  Composite < Component
  def initialize
    @components = []
  end

  def add(component)
    @components.push(component)
  end

  def to_enum
    CompositeIterator.new(@components).to_enum
  end
end

