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
Resource.destroy_all
User.destroy_all
Chapter.destroy_all


puts "destroyed all"


teacher_one = User.create!(
    email: "Sapideh@gmail.com",
    password: "password",
    first_name: "Sapideh",
    last_name: "H",
    username: "Sapideh1",
    teacher: true,
    date_of_birth: '1980-11-25'
    )

teacher_two = User.create!(
    email: "kathy@gmail.com",
    password: "password",
    first_name: "Kathy",
    last_name: "H",
    username: "Kathy1",
    teacher: true,
    date_of_birth: '1980-11-25'
    )

teacher_three = User.create!(
    email: "chris@gmail.com",
    password: "password",
    first_name: "Chris",
    last_name: "H",
    username: "Chris1",
    teacher: true,
    date_of_birth: '1980-11-25'
    )

teacher_four = User.create!(
    email: "tavis@gmail.com",
    password: "password",
    first_name: "Tavis",
    last_name: "H",
    username: "Tavis1",
    teacher: true,
    date_of_birth: '1980-11-25'
    )

student_one = User.create!(
    email: "carry@gmail.com",
    password: "password",
    first_name: "Carry",
    last_name: "H",
    username: "Carry1",
    teacher: false,
    date_of_birth: '1980-11-25'
    )

student_two = User.create!(
    email: "jongah@gmail.com",
    password: "password",
    first_name: "Jongah",
    last_name: "H",
    username: "Jongah1",
    teacher: false,
    date_of_birth: '1980-11-25'
    )

student_three = User.create!(
    email: "kyle@gmail.com",
    password: "password",
    first_name: "Kyle",
    last_name: "H",
    username: "Kyle1",
    teacher: false,
    date_of_birth: '1980-11-25'
    )


student_four = User.create!(
    email: "alin@gmail.com",
    password: "password",
    first_name: "Alin",
    last_name: "H",
    username: "Alin",
    teacher: false,
    date_of_birth: '1980-11-25'
    )


student_five = User.create!(
    email: "matthaious@gmail.com",
    password: "password",
    first_name: "Matthaious",
    last_name: "H",
    username: "Matthaious",
    teacher: false,
    date_of_birth: '1980-11-25'
    )



lesson_one = Lesson.create!(
	student_id: student_one.id ,
	teacher_id: teacher_one.id,
	start_time: '2021-07-12 10:00',
	end_time: '2021-07-12 11:00',
	rate: 25,
	teacher_notes: " ",
	student_notes: " "
	)

lesson_two = Lesson.create!(
	student_id: student_two.id ,
	teacher_id: teacher_one.id,
	start_time: '2021-07-12 12:00',
	end_time: '2021-07-12 13:00',
	rate: 25,
	teacher_notes: " ",
	student_notes: " "
	)


lesson_three = Lesson.create!(
	student_id: student_three.id ,
	teacher_id: teacher_one.id,
	start_time: '2021-07-12 14:00',
	end_time: '2021-07-12 15:00',
	rate: 25,
	teacher_notes: " ",
	student_notes: " "
	)


lesson_four = Lesson.create!(
	student_id: student_four.id ,
	teacher_id: teacher_one.id,
	start_time: '2021-07-13 10:00',
	end_time: '2021-07-13 11:00',
	rate: 25,
	teacher_notes: " ",
	student_notes: " "
	)


lesson_five = Lesson.create!(
	student_id: student_five.id ,
	teacher_id: teacher_one.id,
	start_time: '2021-07-14 12:00',
	end_time: '2021-07-14 13:00',
	rate: 25,
	teacher_notes: " ",
	student_notes: " "
	)


assignment_one = Assignment.create!(
    details: "get it",
    title: "new melody",
    due_date: '2021-07-01',
    completed: false,
    feedback: " ",
    lesson: lesson_one
    )

assignment_two = Assignment.create!(
    details: "get it",
    title: "new melody",
    due_date: '2021-08-01',
    completed: false,
    feedback: " ",
    lesson: lesson_two
    )

assignment_three = Assignment.create!(
    details: "get it",
    title: "new melody",
    due_date: '2021-09-01',
    completed: false,
    feedback: " ",
    lesson: lesson_three
    )

assignment_four = Assignment.create!(
    details: "get it",
    title: "new melody",
    due_date: '2021-10-01',
    completed: false,
    feedback: " ",
    lesson: lesson_four
    )

assignment_five = Assignment.create!(
    details: "get it",
    title: "new melody",
    due_date: '2021-07-01',
    completed: false,
    feedback: " ",
    lesson: lesson_five
    )


chapter_1 = Chapter.create!(
	name: "Beginners 1"
	)

chapter_2 = Chapter.create!(
	name: "Beginners 2"
	)
chapter_3 = Chapter.create!(
	name: "Intermediate 1"
	)

chapter_4 = Chapter.create!(
	name: "Intermediate 2"
	)

chapter_5 = Chapter.create!(
	name: "Advanced"
	)


resource_1 = Resource.create!(
    title: "New melody",
    chapter: chapter_1,
    user: teacher_one
    )
file_one = URI.open('https://images.unsplash.com/photo-1567184406952-9f6ba54cb614?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80')
video_one = URI.open('https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_480_1_5MG.mp4')
resource_1.photo.attach(io: file_one, filename: 'temp.png', content_type: 'image/png')
resource_1.video.attach(io: video_one, filename: 'temp.mp4', content_type: 'video/mp4')
resource_1.save!
puts "created!"


=begin
resource_2 = Resource.create!(
    title: "Melody",
    chapter: chapter_1,
    user: teacher_one
    )

resource_3 = Resource.create!(
    title: "New",
    chapter: chapter_1,
    user: teacher_one
    )

resource_4 = Resource.create!(
    title: "Medly",
    chapter: chapter_2,
    user: teacher_one
    )

resource_5 = Resource.create!(
    title: "Harmony",
    chapter: chapter_2,
    user: teacher_one
    )

resource_6 = Resource.create!(
    title: "Drumming",
    chapter: chapter_2,
    user: teacher_two
    )
=end





