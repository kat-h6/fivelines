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


student_seven = User.create!(
    email: "Sapideh@gmail.com",
    password: "password",
    first_name: "Sapideh",
    last_name: "H",
    username: "Sapideh1",
    teacher: false,
    date_of_birth: '1980-11-25'
    )

student_six = User.create!(
    email: "kathy@gmail.com",
    password: "password",
    first_name: "Kathy",
    last_name: "H",
    username: "Kathy1",
    teacher: false,
    date_of_birth: '1980-11-25'
    )

student_one = User.create!(
    email: "chris@gmail.com",
    password: "password",
    first_name: "Chris",
    last_name: "H",
    username: "Chris1",
    teacher: false,
    date_of_birth: '1980-11-25'
    )

teacher_one = User.create!(
    email: "tavis@gmail.com",
    password: "password",
    first_name: "Tavis",
    last_name: "H",
    username: "Tavis1",
    teacher: true,
    date_of_birth: '1980-11-25'
    )

student_six = User.create!(
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
	student_id: student_one.id ,
	teacher_id: teacher_one.id,
	start_time: '2021-07-12 12:00',
	end_time: '2021-07-12 13:00',
	rate: 25,
	teacher_notes: " ",
	student_notes: " "
	)


lesson_three = Lesson.create!(
	student_id: student_one.id ,
	teacher_id: teacher_one.id,
	start_time: '2021-06-17 22:00',
	end_time: '2021-06-17 23:00',
	rate: 25,
	teacher_notes: " ",
	student_notes: " "
	)


lesson_four = Lesson.create!(
	student_id: student_four.id ,
	teacher_id: teacher_one.id,
	start_time: '2021-06-18 10:00',
	end_time: '2021-06-18 11:00',
	rate: 25,
	teacher_notes: " ",
	student_notes: " "
	)

lesson_five = Lesson.create!(
  student_id: student_four.id ,
  teacher_id: teacher_one.id,
  start_time: '2021-06-23 10:00',
  end_time: '2021-06-23 11:00',
  rate: 25,
  teacher_notes: " ",
  student_notes: " "
  )

lesson_six = Lesson.create!(
  student_id: student_four.id ,
  teacher_id: teacher_one.id,
  start_time: '2021-06-30 10:00',
  end_time: '2021-06-30 11:00',
  rate: 25,
  teacher_notes: " ",
  student_notes: " "
  )


lesson_seven = Lesson.create!(
  student_id: student_four.id ,
  teacher_id: teacher_one.id,
  start_time: '2021-06-21 10:00',
  end_time: '2021-06-21 11:00',
  rate: 25,
  teacher_notes: " ",
  student_notes: " "
  )


lesson_eight = Lesson.create!(
	student_id: student_five.id ,
	teacher_id: teacher_one.id,
	start_time: '2021-06-17 12:00',
	end_time: '2021-06-17 13:00',
	rate: 25,
	teacher_notes: " ",
	student_notes: " "
	)

lesson_nine = Lesson.create!(
  student_id: student_five.id ,
  teacher_id: teacher_one.id,
  start_time: '2021-06-29 12:00',
  end_time: '2021-06-29 13:00',
  rate: 25,
  teacher_notes: " ",
  student_notes: " "
  )

lesson_ten = Lesson.create!(
  student_id: student_five.id ,
  teacher_id: teacher_one.id,
  start_time: '2021-06-28 12:00',
  end_time: '2021-06-28 13:00',
  rate: 25,
  teacher_notes: " ",
  student_notes: " "
  )



Lesson.create!(
  student_id: student_three.id ,
  teacher_id: teacher_one.id,
  start_time: '2021-06-18 12:00',
  end_time: '2021-06-18 13:00',
  rate: 25,
  teacher_notes: " ",
  student_notes: " "
  )



Lesson.create!(
  student_id: student_three.id ,
  teacher_id: teacher_one.id,
  start_time: '2021-06-25 12:00',
  end_time: '2021-06-25 13:00',
  rate: 25,
  teacher_notes: " ",
  student_notes: " "
  )


Lesson.create!(
  student_id: student_two.id ,
  teacher_id: teacher_one.id,
  start_time: '2021-07-02 12:00',
  end_time: '2021-07-02 13:00',
  rate: 25,
  teacher_notes: " ",
  student_notes: " "
  )

Lesson.create!(
  student_id: student_seven.id ,
  teacher_id: teacher_one.id,
  start_time: '2021-07-02 12:00',
  end_time: '2021-07-02 13:00',
  rate: 25,
  teacher_notes: " ",
  student_notes: " "
  )

Lesson.create!(
  student_id: student_six.id ,
  teacher_id: teacher_one.id,
  start_time: '2021-07-04 12:00',
  end_time: '2021-07-04 13:00',
  rate: 25,
  teacher_notes: " ",
  student_notes: " "
  )

Lesson.create!(
  student_id: student_six.id ,
  teacher_id: teacher_one.id,
  start_time: '2021-07-01 12:00',
  end_time: '2021-07-01 13:00',
  rate: 25,
  teacher_notes: " ",
  student_notes: " "
  )

Lesson.create!(
  student_id: student_six.id ,
  teacher_id: teacher_one.id,
  start_time: '2021-06-16 23:00',
  end_time: '2021-06-16 24:00',
  rate: 25,
  teacher_notes: " ",
  student_notes: " "
  )

Lesson.create!(
  student_id: student_five.id ,
  teacher_id: teacher_one.id,
  start_time: '2021-06-17 14:00',
  end_time: '2021-06-17 15:00',
  rate: 25,
  teacher_notes: " ",
  student_notes: " "
  )

Lesson.create!(
  student_id: student_two.id ,
  teacher_id: teacher_one.id,
  start_time: '2021-06-17 15:00',
  end_time: '2021-06-17 16:00',
  rate: 25,
  teacher_notes: " ",
  student_notes: " "
  )



assignment_one = Assignment.create!(
    details: "play G major scale double-tongued, quarter note=120",
    title: "Major Scales",
    due_date: '2021-07-01',
    completed: false,
    feedback: " ",
    lesson: lesson_one
    )

assignment_two = Assignment.create!(
    details: "daphnis solo bar 173-175 at a slower tempo",
    title: "audition prep",
    due_date: '2021-06-24',
    completed: false,
    feedback: " ",
    lesson: lesson_two
    )

assignment_three = Assignment.create!(
    details: "prelude to the afternoon of a faune first line in one breath",
    title: "audition prep",
    due_date: '2021-07-01',
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










