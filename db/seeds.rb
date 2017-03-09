# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

University.create(name: "Brazzers University")
University.create(name: "Hogwarts")
University.create(name: "CHURCH OF ALEX JONES")

Student.create(university_id: 1, fname: "Lisa", lname: "Ann")
Student.create(university_id: 2, fname: "Volde", lname: "Gort")
Student.create(university_id: 3, fname: "JESUS", lname: "CHRIST")
Student.create(university_id: 3, fname: "WOKE", lname: "AF")
Student.create(university_id: 3, fname: "Nutt", lname: "City")
Student.create(university_id: 3, fname: "NP", lname: "Hard")
Student.create(university_id: 3, fname: "Hoopty", lname: "Doopty")

Member.create(student_id: 1, password: "succ")
Member.create(student_id: 2, password: "succ")
Member.create(student_id: 3, password: "succ")
Member.create(student_id: 4, password: "succ")
Member.create(student_id: 5, password: "succ")

Admin.create(role: "President", student_id: 1)
Admin.create(role: "VP", student_id: 2)
Admin.create(role: "Treasurer", student_id: 3)
Admin.create(role: "Secretary", student_id: 4)

Service.create(student_id: 1, price: 560.10, title: "SELLING SOUL", description: "Oakland took all my money. Cell: 911", date: Time.now)
Service.create(student_id: 3, price: 50060.10, title: "Selling CSGO skins", description: "Easily the most expensive. Cell: 911", date: Time.now)
Service.create(student_id: 5, price: 56690.10, title: "Selling noose", description: "I'm sure you can find a use. Cell: 911", date: Time.now)

Event.create(id: 1,active: true,attendees: "x1x2x3",title: "ALEX JONES WORSHIP",description: "Our lord and savior, Alex Jones, we are about to worship.", date: Time.now)
Event.create(id: 2,active: true,attendees: "x2x4",title: "Thot patrollin",description: "We out here looking for thots.")
Event.create(id: 4,active: true,attendees: "x2x4",title: "Meme Exchange",description: "I have the hottest memes from 2016, come view them and trade")
Event.create(id: 4,active: false,attendees: "x2",title: "Grapefruit party ;)",description: "Grapefruit is a fat burner")
