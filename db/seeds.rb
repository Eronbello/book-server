10.times  do
	User.create({
		name: Faker::Name.unique.name,
    email: Faker::Internet.unique.email,
    password: Faker::Internet.password
	})
end