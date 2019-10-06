# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


u1 = User.create(name: 'Josefina', email: 'jose@jose.cl', password: '123456', password_confirmation: "123456")
u2 = User.create(name: 'Daniel', email: 'demf@demf.cl', password: '123456', password_confirmation: "123456")
u3 = User.create(name: 'Mario', email: 'mario@mario.cl', password: '123456', password_confirmation: "123456")
u4 = User.create(name: 'Matias', email: 'mati@mati.cl', password: '123456', password_confirmation: "123456")
u5 = User.create(name: 'Pedro', email: 'pedro@pedro.cl', password: '123456', password_confirmation: "123456")
u6 = User.create(name: 'Juan', email: 'juan@juan.cl', password: '123456', password_confirmation: "123456")
u7 = User.create(name: 'Diego', email: 'diego@diego.cl', password: '123456', password_confirmation: "123456")
u8 = User.create(name: 'Martin', email: 'martin@martin.cl', password: '123456', password_confirmation: "123456")


s1 = Student.create(user_id: u1[:id])
s2 = Student.create(user_id: u2[:id])
s3 = Student.create(user_id: u5[:id])
s4 = Student.create(user_id: u6[:id])

t1 = Profesor.create(user_id: u3[:id])
t2 = Profesor.create(user_id: u4[:id])
t3 = Profesor.create(user_id: u7[:id])
t4 = Profesor.create(user_id: u8[:id])

c1 = Course.create(name: 'Arquitectura de sistemas', nrc: 1000)
c2 = Course.create(name: 'Quimica y ambiente', nrc: 1001)

uc1 = UserCourse.create(user_id: u1[:id], course_id: c1[:id])
uc2 = UserCourse.create(user_id: u3[:id], course_id: c1[:id])
uc5 = UserCourse.create(user_id: u5[:id], course_id: c1[:id])
uc6 = UserCourse.create(user_id: u7[:id], course_id: c1[:id])

uc3 = UserCourse.create(user_id: u2[:id], course_id: c2[:id])
uc4 = UserCourse.create(user_id: u4[:id], course_id:c2[:id])
uc7 = UserCourse.create(user_id: u6[:id], course_id: c1[:id])
uc8 = UserCourse.create(user_id: u8[:id], course_id: c1[:id])


co1 = Comment.create(user_id: u1[:id], course_id: c1[:id], description: 'Excelente curso!')
co2 = Comment.create(user_id: u3[:id], course_id: c1[:id], description: 'Alumnos muy conversadores...')

co3 = Comment.create(user_id: u2[:id], course_id: c2[:id], description: 'Bastante complejo')
co4 = Comment.create(user_id: u4[:id], course_id: c2[:id], description: 'Gran desempeño')






