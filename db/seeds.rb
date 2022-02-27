user = User.create(name: 'User test', email: 'user@mail.com', password: '123456', password_confirmation: '123456')

# seed 50 records
50.times do
  todo = Todo.create(title: Faker::Lorem.word, created_by: user.id)
  todo.items.create(name: Faker::Lorem.word, done: false)
end
