class CompositeIterator
  def initialize(collection)
    @collection = collection
  end

  def to_enum
    iterate(@collection)
  end

  def iterate(composite)
    Enumerator.new do |yelder|
      composite.each do |component|
        if component.respond_to?(:to_enum) and component.to_enum
          iterate(component.to_enum).each do |c|
            yelder << c
          end
        else
          yelder << component
        end
      end
    end
  end
end

