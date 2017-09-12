puts "Create 10 public jobs, and 10 hidden jobs"

User.create([email: 'example@gmail.com', password: '12345678', password_confirmation: '12345678', is_admin: 'true'])
puts "Admin account created."

create_jobs = for i in 1..10 do
  Job.create!([title: "Job no.#{i}", description: "This is public job No. #{i}", wage_upper_bound: rand(50..99)*100, wage_lower_bound: rand(10..49)*100, is_hidden: "false"])
end
puts "10 Public jobs created."

create_jobs = for i in 1..10 do
  Job.create!([title: "Job no.#{i+10}", description: "This is hidden job No. #{i+10}", wage_upper_bound: rand(50..99)*100, wage_lower_bound: rand(10..49)*100,is_hidden: "true"])
end
puts "10 Hidden jobs created."
