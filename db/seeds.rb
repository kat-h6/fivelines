# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#require 'faker'
#require 'open-uri'
Assignment.destroy_all
Lesson.destroy_all
User.destroy_all

puts "destroyed all"

teacher_one = User.new(
    email: "anders@gmail.com",
    password: "password",
    first_name: "Anders",
    last_name: "H",
    username: "Anders1",
    teacher: true,
    date_of_birth: '1980-11-25'
    )
teacher_one.save!


student_one = User.new(
    email: "carry@gmail.com",
    password: "password",
    first_name: "Carry",
    last_name: "H",
    username: "Carry1",
    teacher: false,
    date_of_birth: '1980-11-25'
    )
student_one.save!


lesson_one = Lesson.new(
	student_id: student_one.id ,
	teacher_id: teacher_one.id,
	start_time: '2021-07-12 10:00',
	end_time: '2021-07-12 11:00',
	rate: 25,
	teacher_notes: " ",
	student_notes: " "
	)
lesson_one.save!


assignment_one = Assignment.new(
	details: "get it",
	title: "new melody",
	due_date: '2021-07-01',
	completed: false,
	feedback: " ",
	lesson_id: Lesson.first.id
	)
assignment_one.save!


