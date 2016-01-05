$:.unshift File.dirname(File.expand_path(__FILE__))

require 'pp'
require 'component'
require 'composite_iterator'
require 'composite'
require 'element'
require 'query'

module Conditions
  autoload :RangeFilter, 'conditions/range_filter'
end

module Fields
  autoload :One,   'fields/one'
  autoload :Two,   'fields/two'
  autoload :Three, 'fields/three'
  autoload :Four,  'fields/four'
end

# puts Composites::FilterComposite.inspect

addons = Composite.new
addons.add(Fields::Three.new)
addons.add(Fields::Four.new)

projections = Composite.new
projections.add(Fields::One.new)
projections.add(Fields::Two.new)
projections.add(addons)

root = Composite.new
root.add(Conditions::RangeFilter.new)
root.add(projections)

# may be tree consctructed

pp Query.new(root).projections

