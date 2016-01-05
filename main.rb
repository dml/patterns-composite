$:.unshift File.dirname(File.expand_path(__FILE__))

require 'component'
require 'query'

module Composites
  autoload :FilterComposite, 'composites/filter_composite'
end

module Conditions
  autoload :TerminalsCondition, 'conditions/terminals_condition'
end

module Fields
  autoload :one,   'fields/one'
  autoload :two,   'fields/two'
  autoload :three, 'fields/three'
  autoload :four,  'fields/four'
end

puts Composites::FilterComposite.inspect

