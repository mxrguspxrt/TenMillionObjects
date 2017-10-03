output = `free -m`
available_ram = output.split("\n")[1].split(" ").last
puts available_ram
