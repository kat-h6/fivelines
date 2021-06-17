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
	start_time: '2021-07-17 23:00',
	end_time: '2021-07-17 24:00',
	rate: 25,
	teacher_notes: " ",
	student_notes: " "
	)


lesson_three = Lesson.create!(
	student_id: student_one.id ,
	teacher_id: teacher_one.id,
	start_time: '2021-07-16 14:00',
	end_time: '2021-07-16 15:00',
  rate: 25,
	teacher_notes: " ",
	student_notes: " "
	)


lesson_four = Lesson.create!(
	student_id: student_one.id ,
	teacher_id: teacher_one.id,
	start_time: '2021-06-22 10:00',
	end_time: '2021-06-22 11:00',
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
	start_time: '2021-07-17 12:00',
	end_time: '2021-07-17 13:00',
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
  start_time: '2021-08-02 12:00',
  end_time: '2021-08-02 13:00',
  rate: 25,
  teacher_notes: " ",
  student_notes: " "
  )

Lesson.create!(
  student_id: student_seven.id ,
  teacher_id: teacher_one.id,
  start_time: '2021-08-02 12:00',
  end_time: '2021-08-02 13:00',
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
  start_time: '2021-07-05 12:00',
  end_time: '2021-07-05 13:00',
  rate: 25,
  teacher_notes: " ",
  student_notes: " "
  )

Lesson.create!(
  student_id: student_six.id ,
  teacher_id: teacher_one.id,
  start_time: '2021-06-18 10:00',
  end_time: '2021-06-18 11:00',
  teacher_notes: " ",
  student_notes: " "
  )

Lesson.create!(
  student_id: student_five.id ,
  teacher_id: teacher_one.id,
  start_time: '2021-06-18 14:00',
  end_time: '2021-06-18 15:00',
  rate: 25,
  teacher_notes: " ",
  student_notes: " "
  )

Lesson.create!(
  student_id: student_one.id ,
  teacher_id: teacher_one.id,
  start_time: '2021-06-17 21:00',
  end_time: '2021-06-17 22:00',
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

file_1 = URI.open('https://images.unsplash.com/photo-1520446266423-6daca23fe8c7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80')
video_1 = URI.open('https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_480_1_5MG.mp4')
assignment_one.photo.attach(io: file_1, filename: 'temp.png', content_type: 'image/png')
assignment_one.video.attach(io: video_1, filename: 'temp.mp4', content_type: 'video/m')
assignment_one.save!
puts "created!"


assignment_two = Assignment.create!(
    details: "daphnis solo bar 173-175 at a slower tempo",
    title: "audition prep",
    due_date: '2021-06-24',
    completed: false,
    feedback: " ",
    lesson: lesson_two
    )
file_2 = URI.open('https://images.unsplash.com/photo-1520446266423-6daca23fe8c7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80')
video_2 = URI.open('https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_480_1_5MG.mp4')
assignment_two.photo.attach(io: file_2, filename: 'temp.png', content_type: 'image/png')
assignment_two.video.attach(io: video_2, filename: 'temp.mp4', content_type: 'video/m')
assignment_two.save!
puts "created!"

assignment_three = Assignment.create!(
    details: "prelude to the afternoon of a faune first line in one breath",
    title: "audition prep",
    due_date: '2021-07-01',
    completed: false,
    feedback: " ",
    lesson: lesson_three
    )
file_3 = URI.open('https://images.unsplash.com/photo-1520446266423-6daca23fe8c7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80')
video_3 = URI.open('https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_480_1_5MG.mp4')
assignment_three.photo.attach(io: file_3, filename: 'temp.png', content_type: 'image/png')
assignment_three.video.attach(io: video_3, filename: 'temp.mp4', content_type: 'video/m')
assignment_three.save!
puts "created!"




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
    title: "Mary Poppins",
    chapter: chapter_1,
    user: teacher_one
    )
file_one = URI.open('https://images.unsplash.com/photo-1507838153414-b4b713384a76?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80')
video_one = URI.open('https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_480_1_5MG.mp4')
resource_1.photo.attach(io: file_one, filename: 'temp.png', content_type: 'image/png')
resource_1.video.attach(io: video_one, filename: 'temp.mp4', content_type: 'video/m')
resource_1.save!
puts "created!"


resource_2 = Resource.create!(
    title: "Westside Story",
    chapter: chapter_2,
    user: teacher_one
    )
file_two = URI.open('https://images.unsplash.com/photo-1576976881052-ee7e730fbfee?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=933&q=80')
video_two = URI.open('https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_480_1_5MG.mp4')
resource_2.photo.attach(io: file_two, filename: 'temp.png', content_type: 'image/png')
resource_2.video.attach(io: video_two, filename: 'temp.mp4', content_type: 'video/m')
resource_2.save!
puts "created!"



resource_3 = Resource.create!(
    title: "Hamilton",
    chapter: chapter_3,
    user: teacher_one
    )
file_three = URI.open('https://images.unsplash.com/photo-1520446266423-6daca23fe8c7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80')
video_three = URI.open('https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_480_1_5MG.mp4')
resource_3.photo.attach(io: file_three, filename: 'temp.png', content_type: 'image/png')
resource_3.video.attach(io: video_three, filename: 'temp.mp4', content_type: 'video/m')
resource_3.save!
puts "created!"

=begin
resource_4 = Resource.create!(
    title: "Medly",
    chapter: chapter_4,
    user: teacher_one
    )
file_four = URI.open('https://images.unsplash.com/photo-1576976881052-ee7e730fbfee?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=933&q=80')
video_four = URI.open('https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_480_1_5MG.mp4')
resource_4.photo.attach(io: file_one, filename: 'temp.png', content_type: 'image/png')
resource_4.video.attach(io: video_two, filename: 'temp.mp4', content_type: 'video/m')
resource_4.save!
puts "created!"

resource_5 = Resource.create!(
    title: "Harmony",
    chapter: chapter_5,
    user: teacher_one
    )
file_five = URI.open('https://images.unsplash.com/photo-1576976881052-ee7e730fbfee?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=933&q=80')
video_five = URI.open('https://file-examples-com.github.io/uploads/2017/04/file_example_MP4_480_1_5MG.mp4')
resource_5.photo.attach(io: file_one, filename: 'temp.png', content_type: 'image/png')
resource_5.video.attach(io: video_two, filename: 'temp.mp4', content_type: 'video/m')
resource_5.save!
puts "created!"
=end






