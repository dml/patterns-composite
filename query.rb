class Query
  def initialize(component)
    @component = component
  end

  def projections
    @component.to_enum.map do |component|
      begin
        component.projection
      rescue => e
      end
    end.compact
  end
end

