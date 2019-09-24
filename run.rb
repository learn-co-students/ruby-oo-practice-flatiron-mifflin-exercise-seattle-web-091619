require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
jon = Manager.new("Jon", "Clothing", 45)
tom = Manager.new("Tom", "Electronics", 97)

lisa = jon.hire_employee("Lisa", 123456)
rick = jon.hire_employee("Rick", 50)

bob = tom.hire_employee("Bob", 6000)
sam = tom.hire_employee("Sam", 5100)

binding.pry
puts "done"
