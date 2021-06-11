# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#require 'faker'
#require 'open-uri'
Lesson.destroy_all
Assignment.destroy_all
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

teacher_two = User.new(
    email: "knut@gmail.com",
    password: "password",
    first_name: "Knut",
    last_name: "H",
    username: "Knut1",
    teacher: true,
    date_of_birth: '1980-11-25'
    )
teacher_two.save!

teacher_three = User.new(
    email: "kathy@gmail.com",
    password: "password",
    first_name: "Kathy",
    last_name: "H",
    username: "Kathy1",
    teacher: true,
    date_of_birth: '1980-11-25'
    )
teacher_three.save!

teacher_four = User.new(
    email: "chris@gmail.com",
    password: "password",
    first_name: "Chris",
    last_name: "H",
    username: "Chris1",
    teacher: true,
    date_of_birth: '1980-11-25'
    )
teacher_four.save!

teacher_five = User.new(
    email: "tavis@gmail.com",
    password: "password",
    first_name: "Tavis",
    last_name: "H",
    username: "Tavis1",
    teacher: true,
    date_of_birth: '1980-11-25'
    )
teacher_five.save!

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

student_two = User.new(
    email: "jongah@gmail.com",
    password: "password",
    first_name: "Jongah",
    last_name: "H",
    username: "Jongah1",
    teacher: false,
    date_of_birth: '1980-11-25'
    )
student_two.save!

student_three = User.new(
    email: "kyle@gmail.com",
    password: "password",
    first_name: "Kyle",
    last_name: "H",
    username: "Kyle1",
    teacher: false,
    date_of_birth: '1980-11-25'
    )
student_three.save!

student_four = User.new(
    email: "alin@gmail.com",
    password: "password",
    first_name: "Alin",
    last_name: "H",
    username: "Alin",
    teacher: false,
    date_of_birth: '1980-11-25'
    )
student_four.save!

student_five = User.new(
    email: "matthaious@gmail.com",
    password: "password",
    first_name: "Matthaious",
    last_name: "H",
    username: "Matthaious",
    teacher: false,
    date_of_birth: '1980-11-25'
    )
student_five.save!

student_six = User.new(
    email: "sheila@gmail.com",
    password: "password",
    first_name: "Sheila",
    last_name: "H",
    username: "Sheila1",
    teacher: false,
    date_of_birth: '1980-11-25'
    )
student_six.save!

student_seven = User.new(
    email: "sy@gmail.com",
    password: "password",
    first_name: "Sy",
    last_name: "H",
    username: "Sy1",
    teacher: false,
    date_of_birth: '1980-11-25'
    )
student_seven.save!




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

lesson_two = Lesson.new(
	student_id: student_two.id ,
	teacher_id: teacher_one.id,
	start_time: '2021-07-12 12:00',
	end_time: '2021-07-12 13:00',
	rate: 25,
	teacher_notes: " ",
	student_notes: " "
	)
lesson_two.save!

lesson_three = Lesson.new(
	student_id: student_three.id ,
	teacher_id: teacher_one.id,
	start_time: '2021-07-12 14:00',
	end_time: '2021-07-12 15:00',
	rate: 25,
	teacher_notes: " ",
	student_notes: " "
	)
lesson_three.save!

lesson_four = Lesson.new(
	student_id: student_four.id ,
	teacher_id: teacher_one.id,
	start_time: '2021-07-13 10:00',
	end_time: '2021-07-13 11:00',
	rate: 25,
	teacher_notes: " ",
	student_notes: " "
	)
lesson_four.save!

lesson_five = Lesson.new(
	student_id: student_five.id ,
	teacher_id: teacher_one.id,
	start_time: '2021-07-14 12:00',
	end_time: '2021-07-14 13:00',
	rate: 25,
	teacher_notes: " ",
	student_notes: " "
	)
lesson_five.save!


assignment_one = Assignment.new(
	details: "get it",
	title: "new melody",
	due_date: '2021-07-01',
	completed: false,
	feedback: " ",
	lesson_id: Lesson.first.id
	)
assignment_one.save!








