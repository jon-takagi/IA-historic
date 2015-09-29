# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
project = Project.create(name: "CS IA")
project.success_conditions.build(description: "Planning is 6/6 ")
project.success_conditions.build(description: "Solution overview is 6/6 ")
project.success_conditions.build(description: "Development is 12/12 ")
project.success_conditions.build(description: "Functionality is 4/4 ")
project.success_conditions.build(description: "Evaluation is 6/6 ")

project.tasks.build(description: "Planning", status: 2)
project.tasks.build(description: "Solution overview", status: 1)
project.tasks.build(description: "Development", status: 3)
project.tasks.build(description: "Functionality", status: 3)
project.tasks.build(description: "Evaluation", status: 0)

project.save
