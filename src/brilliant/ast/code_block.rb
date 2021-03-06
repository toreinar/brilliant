require "brilliant/ast/node"


class Brilliant::AST::CodeBlock < Brilliant::AST::Node
  attr_accessor :child_nodes

  def initialize(child_nodes)
    self.child_nodes = child_nodes.first
  end

  def generate_code(mod, builder)
    child_nodes.each do |child_node|
      child_node.generate_code(mod, builder)
    end
  end
end
