require 'time'


start_free_ram = `ruby free-ram.rb`.to_i
start_time = Time.now.to_i


class SomeObject

  def initialize(name)
    @name = name
  end

end


million = 1000000
objects = []
total = 10 * million


(0...total).each do |i|
  obj = SomeObject.new("tere")
  objects.push(obj)
end


end_free_ram = `ruby free-ram.rb`.to_i
end_time = Time.now.to_i


concumed_ram = start_free_ram - end_free_ram
time_ran = end_time - start_time

objects # reading var so GC would not clear it

puts "Ruby consumed total #{concumed_ram}MB and ran #{time_ran} seconds."
