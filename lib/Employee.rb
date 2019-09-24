class Employee
  attr_reader :name
  attr_accessor :salary, :manager

  @@all = []
  def initialize(name, salary, manager)
    @name = name
    @manager = manager
    @salary = salary
    @@all << self
  end

  def manager_name
    "My manager's name is #{self.manager.name}"
  end

  def self.paid_over(num)
    @@all.select { |employee| employee.salary > num}
  end

  def self.find_by_department(department)
    @@all.find { |employee| employee.manager.department == department}
  end

  def tax_bracket
    employees_within_1000 = @@all.select { |employee| (employee.salary - self.salary).abs <= 1000}
    # Don't want to include self obviously
    employees_within_1000.delete(self)
    employees_within_1000.map { |employee| employee.name }
  end

  def self.all
    @@all
  end
end
