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


photo_s_seven = URI.open('https://res.cloudinary.com/tdavid/image/upload/v1623954490/Sapideh_ohi4tz.jpg')
student_seven = User.new(
    email: "Sapideh@gmail.com",
    password: "password",
    first_name: "Sapideh",
    last_name: "H",
    username: "Sapideh1",
    teacher: false,
    date_of_birth: '1980-11-25',
    instrument: 'flute'
    )

student_seven.photo.attach(io: photo_s_seven, filename: 'temp.png', content_type: 'image/png')
student_seven.save!



photo_s_six = URI.open('https://res.cloudinary.com/tdavid/image/upload/v1623954562/Kathy_k3hb9c.jpg')

student_six = User.new(
    email: "kathy@gmail.com",
    password: "password",
    first_name: "Kathy",
    last_name: "H",
    username: "Kathy1",
    teacher: false,
    date_of_birth: '1980-11-25',
    instrument: 'flute'
    )

student_six.photo.attach(io: photo_s_six, filename: 'temp.png', content_type: 'image/png')
student_six.save!

photo_two = URI.open('https://res.cloudinary.com/tdavid/image/upload/v1623954136/Chris-profile_jijecm.jpg')

student_one = User.new(
    email: "chris@gmail.com",
    password: "password",
    first_name: "Chris",
    last_name: "H",
    username: "Chris1",
    teacher: false,
    date_of_birth: '1980-11-25',
    instrument: 'violin'
    )

student_one.photo.attach(io: photo_two, filename: 'temp.png', content_type: 'image/png')
student_one.save!

photo_one = URI.open('https://res.cloudinary.com/tdavid/image/upload/v1623780480/id_1.jpg')


teacher_one = User.new(
    email: "tavis@gmail.com",
    password: "password",
    first_name: "Tavis",
    last_name: "H",
    username: "Tavis1",
    teacher: true,
    date_of_birth: '1980-11-25',
    instrument: 'violin'
    )
teacher_one.photo.attach(io: photo_one, filename: 'temp.png', content_type: 'image/png')
teacher_one.save!

puts "tavis created!"

photo_three = URI.open('https://res.cloudinary.com/tdavid/image/upload/v1623784159/Carry.jpg')
student_eight = User.new(
    email: "carry@gmail.com",
    password: "password",
    first_name: "Carry",
    last_name: "H",
    username: "Carry1",
    teacher: false,
    date_of_birth: '1980-11-25',
    instrument: 'flute'
    )

student_eight.photo.attach(io: photo_three, filename: 'temp.png', content_type: 'image/png')
student_eight.save!

photo_five = URI.open('https://res.cloudinary.com/tdavid/image/upload/v1623782352/Jungah.jpg')

student_two = User.new(
    email: "jongah@gmail.com",
    password: "password",
    first_name: "Jongah",
    last_name: "H",
    username: "Jongah1",
    teacher: false,
    date_of_birth: '1980-11-25',
    instrument: 'flute'
    )

student_two.photo.attach(io: photo_five, filename: 'temp.png', content_type: 'image/png')
student_two.save!

photo_ten = URI.open('https://res.cloudinary.com/tdavid/image/upload/v1623782350/Kyle.jpg')

student_three = User.new(
    email: "kyle@gmail.com",
    password: "password",
    first_name: "Kyle",
    last_name: "H",
    username: "Kyle1",
    teacher: false,
    date_of_birth: '1980-11-25',
    instrument: 'clarinet'
    )

student_three.photo.attach(io:photo_ten, filename: 'temp.png', content_type: 'image/png')
student_three.save!

photo_six = URI.open('https://res.cloudinary.com/tdavid/image/upload/v1623782351/Alin.jpg')

student_four = User.new(
    email: "alin@gmail.com",
    password: "password",
    first_name: "Alin",
    last_name: "H",
    username: "Alin",
    teacher: false,
    date_of_birth: '1980-11-25',
    instrument: 'clarinet'
    )

student_four.photo.attach(io: photo_six, filename: 'temp.png', content_type: 'image/png')
student_four.save!

puts "student four created"

photo_four = URI.open('https://res.cloudinary.com/tdavid/image/upload/v1623782352/Matthaious.jpg')
student_five = User.new(
    email: "matthaious@gmail.com",
    password: "password",
    first_name: "Matthaious",
    last_name: "H",
    username: "Matthaious",
    teacher: false,
    date_of_birth: '1980-11-25',
    instrument: 'violin'
    )
student_five.photo.attach(io: photo_four, filename: 'temp.png', content_type: 'image/png')


demo_lesson_one = Lesson.create!(
  student: student_six,
  teacher: teacher_one,
  start_time: '2021-07-03 18:00',
  end_time: '2021-07-03 19:00',
  rate: 25,
  teacher_notes: " ",
  student_notes: " "
  )

demo_lesson_two = Lesson.create!(
  student: student_one,
  teacher: teacher_one,
  start_time: '2021-07-03 19:00',
  end_time: '2021-07-03 20:00',
  rate: 25,
  teacher_notes: " ",
  student_notes: " "
  )

demo_lesson_three = Lesson.create!(
  student: student_seven,
  teacher: teacher_one,
  start_time: '2021-07-03 20:00',
  end_time: '2021-07-03 21:00',
  rate: 25,
  teacher_notes: " ",
  student_notes: " "
  )

demo_lesson_notes = Lesson.create!(
  student: student_six,
  teacher: teacher_one,
  start_time: '2021-06-24 15:00',
  end_time: '2021-06-24 16:00',
  rate: 25,
  teacher_notes: "Kathy played the first half of the Jolivet Concerto for me in preparation for her concert"
)


demo_lesson_notes_two = Lesson.create!(
  student: student_six,
  teacher: teacher_one,
  start_time: '2021-06-16 15:00',
  end_time: '2021-06-16 16:00',
  rate: 25,
  teacher_notes: "We worked on articulation for most of the lesson. Kathy's double-tonguing has improved since last month."
)

demo_lesson_notes_three = Lesson.create!(
  student: student_six,
  teacher: teacher_one,
  start_time: '2021-06-08 15:00',
  end_time: '2021-06-08 16:00',
  rate: 25,
  teacher_notes: "Kathy ran through the first movement of Jolivet Concerto and JS Bach B minor Sonata."
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
	student: student_eight,

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
	start_time: '2021-08-22 10:00',
	end_time: '2021-08-22 11:00',
	rate: 25,
	teacher_notes: " ",
	student_notes: " "
	)

lesson_five = Lesson.create!(
  student_id: student_four.id ,
  teacher_id: teacher_one.id,
  start_time: '2021-07-23 10:00',
  end_time: '2021-07-23 11:00',
  rate: 25,
  teacher_notes: " ",
  student_notes: " "
  )

lesson_six = Lesson.create!(
  student: student_four,
  teacher: teacher_one,
  start_time: '2021-07-30 10:00',
  end_time: '2021-07-30 11:00',
  rate: 25,
  teacher_notes: " ",
  student_notes: " "
  )


lesson_seven = Lesson.create!(
  student_id: student_four.id ,
  teacher_id: teacher_one.id,
  start_time: '2021-07-21 10:00',
  end_time: '2021-07-21 11:00',
  rate: 25,
  teacher_notes: " ",
  student_notes: " "
  )


lesson_eight = Lesson.create!(
	student: student_six,
	teacher: teacher_one,
	start_time: '2021-08-17 12:00',
	end_time: '2021-08-17 13:00',
	rate: 25,
	teacher_notes: " ",
	student_notes: " "
	)

lesson_nine = Lesson.create!(
  student: student_five,
  teacher: teacher_one,
  start_time: '2021-07-10 12:00',
  end_time: '2021-07-10 13:00',
  rate: 25,
  teacher_notes: " ",
  student_notes: " "
  )

lesson_ten = Lesson.create!(
  student_id: student_five.id ,
  teacher_id: teacher_one.id,
  start_time: '2021-07-09 12:00',
  end_time: '2021-07-09 13:00',
  rate: 25,
  teacher_notes: " ",
  student_notes: " "
  )



Lesson.create!(
  student_id: student_three.id ,
  teacher_id: teacher_one.id,
  start_time: '2021-07-08 12:00',
  end_time: '2021-07-08 13:00',
  rate: 25,
  teacher_notes: " ",
  student_notes: " "
  )



Lesson.create!(
  student_id: student_three.id ,
  teacher_id: teacher_one.id,
  start_time: '2021-07-12 12:00',
  end_time: '2021-07-12 13:00',
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
  start_time: '2021-07-09 10:00',
  end_time: '2021-07-09 11:00',
  teacher_notes: " ",
  student_notes: " "
  )

Lesson.create!(
  student_id: student_five.id ,
  teacher_id: teacher_one.id,
  start_time: '2021-07-18 14:00',
  end_time: '2021-07-18 15:00',
  rate: 25,
  teacher_notes: " ",
  student_notes: " "
  )

Lesson.create!(
  student_id: student_one.id ,
  teacher_id: teacher_one.id,
  start_time: '2021-07-17 10:00',
  end_time: '2021-07-17 11:00',
  rate: 25,
  teacher_notes: " ",
  student_notes: " "
  )



assignment_one = Assignment.create!(
    details: "Play through Jolivet Concerto in the concert hall with your pianit",
    title: "Run Through",
    due_date: '2021-06-27',
    completed: true,
    feedback: "The second movement needs to be more exciting, not just technical",
    lesson: demo_lesson_notes
    )

file_1 = URI.open('https://images.unsplash.com/photo-1520446266423-6daca23fe8c7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1650&q=80')
assignment_one.photo.attach(io: file_1, filename: 'temp.png', content_type: 'image/png')
assignment_one.video.attach(io: File.open(File.join(Rails.root,'db/videos/video_1.mp4')), filename: 'video_1.mp4', content_type: 'video/mp4')
assignment_one.save!
puts "created!"


assignment_two = Assignment.create!(
    details: "scales",
    title: "Play through scale all slurred with tempo quarternote = 100",
    due_date: '2021-06-24',
    completed: false,
    feedback: "Make sure you blow evenly through all the notes for that legato line!",
    lesson: lesson_two
    )
file_2 = URI.open('https://cdn.shopify.com/s/files/1/0815/5455/products/sheet_grande.jpg?v=1462572134')
assignment_two.photo.attach(io: file_2, filename: 'temp.png', content_type: 'image/png')
assignment_two.video.attach(io: File.open(File.join(Rails.root,'db/videos/video_3.mov')), filename: 'video_3.mov', content_type: 'video/mov')
assignment_two.save!
puts "created!"

=begin
assignment_three = Assignment.create!(
    details: "Prelude to the afternoon of a faune first line in one breath",
    title: "Audition prep",
    due_date: '2021-05-01',
    completed: false,
    feedback: " ",
    lesson: lesson_three
    )
file_3 = URI.open('https://sheetmusic-free.com/wp-content/uploads/2016/06/Air-Sheet-Music-pdf-Bach-Air-Piano-Sheet-Music.png')
assignment_three.photo.attach(io: file_3, filename: 'temp.png', content_type: 'image/png')
assignment_three.video.attach(io: File.open(File.join(Rails.root,'db/videos/video_3.mov')), filename: 'video_3.mov', content_type: 'video/mov')
assignment_three.save!
puts "created!"

assignment_four = Assignment.create!(
    details: "Gavotte in D Major, remember to practice the harmonies ",
    title: "Audition prep",
    due_date: '2021-05-01',
    completed: false,
    feedback: " ",
    lesson: lesson_four
    )
file_4 = URI.open('https://html.scribdassets.com/3dkn8g6u2o1nhejw/images/1-6270435575.jpg')
assignment_four.photo.attach(io: file_4, filename: 'temp.png', content_type: 'image/png')
assignment_four.video.attach(io: File.open(File.join(Rails.root,'db/videos/video_4.mp4')), filename: 'video_4.mp4', content_type: 'video/mp4')
assignment_four.save!
puts "created!"

assignment_five = Assignment.create!(
    details: "Prelude to Bourree, listen to the Suzuki version before you practice",
    title: "Audition prep",
    due_date: '2021-05-01',
    completed: false,
    feedback: " ",
    lesson: lesson_five
    )
file_5 = URI.open('https://www.musicforballetclass.com/wp-content/uploads/2018/09/my-favorite-things-sheet-music-arrangement-for-ballet-class-pdf.png')
assignment_five.photo.attach(io: file_5, filename: 'temp.png', content_type: 'image/png')
assignment_five.video.attach(io: File.open(File.join(Rails.root,'db/videos/video_5.mov')), filename: 'video_5.mov', content_type: 'video/mov')
assignment_five.save!
puts "created!"
=end





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
resource_1.photo.attach(io: file_one, filename: 'temp.png', content_type: 'image/png')
resource_1.video.attach(io: File.open(File.join(Rails.root,'db/videos/video_4.mp4')), filename: 'video_4.mp4', content_type: 'video/mp4')
resource_1.save!
puts "created!"


resource_2 = Resource.create!(
    title: "Westside Story",
    chapter: chapter_2,
    user: teacher_one
    )
file_two = URI.open('https://images.unsplash.com/photo-1576976881052-ee7e730fbfee?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=933&q=80')
resource_2.photo.attach(io: file_two, filename: 'temp.png', content_type: 'image/png')
resource_2.video.attach(io: File.open(File.join(Rails.root,'db/videos/video_5.mov')), filename: 'video_5.mov', content_type: 'video/mov')
resource_2.save!
puts "created!"



resource_3 = Resource.create!(
    title: "Hamilton",
    chapter: chapter_3,
    user: teacher_one
    )
file_three = URI.open('https://i.stack.imgur.com/ASLCE.png')
resource_3.photo.attach(io: file_three, filename: 'temp.png', content_type: 'image/png')
resource_3.video.attach(io: File.open(File.join(Rails.root,'db/videos/video_6.mov')), filename: 'video_6.mov', content_type: 'video/mov')
resource_3.save!
puts "created!"


resource_4 = Resource.create!(
    title: "Fun Medley",
    chapter: chapter_4,
    user: teacher_one
    )
file_four = URI.open('https://images.unsplash.com/photo-1576976881052-ee7e730fbfee?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=933&q=80')
resource_4.photo.attach(io: file_four, filename: 'temp.png', content_type: 'image/png')
resource_4.video.attach(io: File.open(File.join(Rails.root,'db/videos/video_7.MOV')), filename: 'video_7.MOV', content_type: 'video/mov')
resource_4.save!
puts "created!"

resource_5 = Resource.create!(
    title: "The book of Mormon",
    chapter: chapter_5,
    user: teacher_one
    )
file_five = URI.open('https://images.unsplash.com/photo-1576976881052-ee7e730fbfee?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=933&q=80')
resource_5.photo.attach(io: file_five, filename: 'temp.png', content_type: 'image/png')
resource_5.video.attach(io: File.open(File.join(Rails.root,'db/videos/video_1.mp4')), filename: 'video_1.mp4', content_type: 'video/mp4')
resource_5.save!
puts "created!"

resource_6 = Resource.create!(
    title: "Harmony",
    chapter: chapter_1,
    user: teacher_one
    )
file_six = URI.open('https://www.musicforballetclass.com/wp-content/uploads/2018/09/my-favorite-things-sheet-music-arrangement-for-ballet-class-pdf.png')
resource_6.photo.attach(io: file_six, filename: 'temp.png', content_type: 'image/png')
resource_6.video.attach(io: File.open(File.join(Rails.root,'db/videos/video_2.mov')), filename: 'video_2.mov', content_type: 'video/mov')
resource_6.save!
puts "created!"


=begin
resource_7 = Resource.create!(
    title: "The Phantom of the opera",
    chapter: chapter_2,
    user: teacher_one
    )
file_seven = URI.open('https://s3.amazonaws.com/halleonard-pagepreviews/HL_DDS_1007043l8Oba7tioK.png')
resource_7.photo.attach(io: file_seven, filename: 'temp.png', content_type: 'image/png')
resource_7.video.attach(io: File.open(File.join(Rails.root,'db/videos/video_6.mov')), filename: 'video_6.mov', content_type: 'video/mov')
resource_7.save!
puts "created!"


resource_8 = Resource.create!(
    title: "Les miserables",
    chapter: chapter_3,
    user: teacher_one
    )
file_eight = URI.open('https://www.musicforballetclass.com/wp-content/uploads/2018/09/my-favorite-things-sheet-music-arrangement-for-ballet-class-pdf.png')
resource_8.photo.attach(io: file_eight, filename: 'temp.png', content_type: 'image/png')
resource_8.video.attach(io: File.open(File.join(Rails.root,'db/videos/video_2.mov')), filename: 'video_2.mov', content_type: 'video/mov')
resource_8.save!
puts "created!"


resource_9 = Resource.create!(
    title: "The Rocky Horror Show",
    chapter: chapter_4,
    user: teacher_one
    )
file_nine = URI.open('https://www.musicforballetclass.com/wp-content/uploads/2018/09/my-favorite-things-sheet-music-arrangement-for-ballet-class-pdf.png')
resource_9.photo.attach(io: file_nine, filename: 'temp.png', content_type: 'image/png')
resource_9.video.attach(io: File.open(File.join(Rails.root,'db/videos/video_2.mov')), filename: 'video_2.mov', content_type: 'video/mov')
resource_9.save!
puts "created!"

resource_10 = Resource.create!(
    title: "The Lion King",
    chapter: chapter_5,
    user: teacher_one
    )
file_ten = URI.open('https://www.musicforballetclass.com/wp-content/uploads/2018/09/my-favorite-things-sheet-music-arrangement-for-ballet-class-pdf.png')
resource_10.photo.attach(io: file_ten, filename: 'temp.png', content_type: 'image/png')
resource_10.video.attach(io: File.open(File.join(Rails.root,'db/videos/video_2.mov')), filename: 'video_2.mov', content_type: 'video/mov')
resource_10.save!
puts "created!"
=end









