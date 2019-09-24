class Manager
  attr_reader :name, :department, :age
  @@all = []

  def initialize(name, department, age)
    @name = name
    @department = department
    @age = age
    @@all << self
  end

  def hire_employee(emp_name, salary)
    Employee.new(emp_name, salary, self)
  end

  def employees
    Employee.all.select { |employee| employee.manager == self }
  end

  def self.all_departments
    @@all.map { |manager| manager.department }
  end

  def self.average_age
    sum = 0.0
    @@all.each { |manager| sum += manager.age }
    sum / @@all.length
  end

  def self.all
    @@all
  end
end
