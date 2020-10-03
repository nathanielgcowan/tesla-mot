User.destroy_all
Car.destroy_all
Battery.destroy_all

# seventyfive = Battery.create({capacity: "75"})
# hundred = Battery.create({capacity: "100"})

zuckerburg = User.create({username: "Mark Zuckerburg"})
musk = User.create({username: "Elon Musk"})
gates = User.create({username: "Bill Gates"})
jobs = User.create({username: "Steve Jobs"})
ballmer = User.create({username: "Steve Ballmer"})

modelz = Car.create({model: "Model Z", year: 2020})
model3 = Car.create({model: "Model 3", year: 2020})
modelx = Car.create({model: "Model X", year: 2020})
# modely = Car.create({model: "Model Y", year: 2020})
roadster = Car.create({model: "Roadster", year: 2020})

Battery.create([
  {appointment_datetime: DateTime.new(2016, 03, 15, 18, 00, 0), user: zuckerburg, car: modelz},
  {appointment_datetime: DateTime.new(2016, 01, 11, 20, 20, 0), user: musk, car: roadster},
  {appointment_datetime: DateTime.new(2016, 04, 22, 14, 00, 0), user: gates, car: modelz},
  {appointment_datetime: DateTime.new(2017, 10, 30, 15, 00, 0), user: jobs, car: model3},
  {appointment_datetime: DateTime.new(2016, 07, 11, 16, 00, 0), user: ballmer, car:modely},
])