User.destroy_all
Car.destroy_all
Battery.destroy_all


zuckerburg = User.create({username: "Mark Zuckerburg"})
musk = User.create({username: "Elon Musk"})
gates = User.create({username: "Bill Gates"})
jobs = User.create({username: "Steve Jobs"})
ballmer = User.create({username: "Steve Ballmer"})



modelz = Car.create({model: "Model Z"})
model3 = Car.create({model: "Model 3"})
modelx = Car.create({model: "Model X"})
modely = Car.create({model: "Model Y"})
roadster = Car.create({model: "Roadster"})


seventyfive = Battery.create({capacity: "75"})
hundred = Battery.create({capacity: "100"})

