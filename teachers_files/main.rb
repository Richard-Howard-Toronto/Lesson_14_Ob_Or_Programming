require_relative 'professor'
require_relative 'student'

albert = Professor.new('Albert', 'Einstein', 'physics')

joe  = Student.new('Joe', 'Bloggs')
john = Student.new('John', 'Doe')
mary = Student.new('Mary', 'Blythe')

cohort = []
cohort << joe
cohort << john
cohort << mary

puts "Joe's knowledge level is #{ joe.knowledge_level }"

albert.teach(cohort)

puts "Mary's knowledge level is #{ mary.knowledge_level }"

5.times { albert.teach(cohort) }

puts "John's knowledge level is #{ john.knowledge_level }"

1.times { albert.slack(cohort) }

puts "John's knowledge level is #{ john.knowledge_level }"

random_dude = Person.new('Random', 'Dude')
cohort << random_dude

# The following line creates an Exception!!!
#albert.teach(cohort)
