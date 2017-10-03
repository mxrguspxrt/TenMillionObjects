require "io/memory"


def exec(command : String)
  io = IO::Memory.new
  Process.run(command, shell: true, output: io)
  io.to_s
end


start_free_ram = exec("ruby free-ram.rb").to_i
start_time = exec("ruby timestamp.rb").to_i


class SomeObject

  def initialize(name : String)
    @name = name
  end

end

million = 1000000
objects = [] of SomeObject

(1...(10 * million)).each do |i|
  obj = SomeObject.new("tere")
  objects.push(obj)
end



end_free_ram = exec("ruby free-ram.rb").to_i
end_time = exec("ruby timestamp.rb").to_i

objects[10]

puts("Crystal used " + (start_free_ram - end_free_ram).to_s + "MB and ran " + (end_time - start_time).to_s + " seconds.")
