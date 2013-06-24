require 'erb'

x = 42
template = ERB.new "The value of x is: <%= x %>"
puts template.result(binding)

template = ERB.new "10 + 10 is equal to <%=20 %>"
puts template.result(binding)

dog_name = "Patches"
template= ERB.new "The dog's name is <%= dog_name %>"
puts template.result(binding)

languages = ["HTML", "CSS", "Javascript"]
iterate = languages.each do |lang|
			puts "The language is: #{lang}"
		end
		template = ERB.new "<%= iterate %>"
		puts template.result(binding)