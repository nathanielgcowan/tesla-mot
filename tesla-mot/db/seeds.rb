User.destroy_all
Car.destroy_all


User.create([
    {email: Email.new(userone@example.com)},
    {email: Email.new(userone@example.com)},
    {email: Email.new(userone@example.com)},
    {email: Email.new(userone@example.com)},
    {email: Email.new(userone@example.com)},
])

Car.create([
    {model: Model.new(modelalpha), user: userone},
    {model: Model.new(modelbeta), user: usertwo},
    {model: Model.new(modelcharlie), user: userthree},
    {model: Model.new(modeldelta), user: userfour},
    {model: Model.new(modelepsilon), user: userfive}
])