@user = User.create!(email: "finthehuman@candykingdom.ooo", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Fin", last_name: 'the Human')

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} rationale content", user_id: @user.id)
end

puts "100 posts have been created"