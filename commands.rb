
#Commands
class Command
  attr_accessor :name
  attr_accessor :block
  def self.list
    ref.keys
  end
  def self.ref #hash mapping for the names to 
    @ref = @ref || {}
  end
  def self.add(command)
    @ref = ref.merge({command.name => command})
  end
  
  def execute(*args) #I guess it's more a wrapper
    block.call(*args)
  end
end

dig = Command.new
dig.name = "dig"
dig.block = Proc.new {puts "You dug a hole!"}
Command.add dig

  