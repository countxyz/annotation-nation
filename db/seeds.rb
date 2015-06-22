User.destroy_all

User.create(
  handle:                'rupert',
  email:                 'user@example.com',
  password:              'password',
  password_confirmation: 'password'
)

p 'This might take a while...'

100.times do
  User.create(
    handle:                FFaker::Internet.user_name,
    email:                 FFaker::Internet.email,
    password:              'password',
    password_confirmation: 'password'
  )
end
