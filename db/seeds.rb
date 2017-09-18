User.create!(
  email: "warlock@traveler.org",
  password: "ghosts",
  password_confirmation: "ghosts",
  name: "Warlock Guardian",
  roles: "site_admin"
  )

puts "1 Admin user created"

User.create!(
  email: "civy@traveler.org",
  password: "ghosts",
  password_confirmation: "ghosts",
  name: "Scared Citizen",
  )

  puts "1 regular user created"

3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
    )
end

10.times do |blog|
  Blog.create!(
    title: "Blog Post #{blog + 1}",
    body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    topic_id: Topic.last.id
  )
end

puts "10 Blogs created"

5.times do |skill|
  Skill.create!(
    title: "Skill #{skill}",
    percent_utilized: "15"
  )
end

puts "5 Skills created"

8.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio # #{portfolio_item + 1}",
    subtitle: "Ruby on Rails",
    body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    main_image: "http://assets.imgix.net/examples/treefrog.jpg?w=600&h=400&fit=crop",
    thumb_image: "http://assets.imgix.net/examples/treefrog.jpg?w=350&h=150&fit=crop",
  )
end

1.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio #{portfolio_item}",
    subtitle: "Angular",
    body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    main_image: "https://exueka.dm2301.livefilestore.com/y4mnHUTshQD-Vc8O8zUpege9gsrU7PAKzmgn5f-fQvCZ2qfvn0FkCO9BvXVVPUDYVpjclNu5xEusAXxm2Map0_MtPTWsBjF4JcryAxE6ZXvGd82WDGrCDLQrkn0H2fEPAkXThtPiDlm5JLiyd-RaYSEoZl0ujIWh74NKQDWtATsU1bdxnPEJt5MhG_j0aRcBWb-p-6o4pkHXoiyfXh9nHVBDw?width=660&height=495&cropmode=none",
    thumb_image: "https://exueka.dm2301.livefilestore.com/y4mnHUTshQD-Vc8O8zUpege9gsrU7PAKzmgn5f-fQvCZ2qfvn0FkCO9BvXVVPUDYVpjclNu5xEusAXxm2Map0_MtPTWsBjF4JcryAxE6ZXvGd82WDGrCDLQrkn0H2fEPAkXThtPiDlm5JLiyd-RaYSEoZl0ujIWh74NKQDWtATsU1bdxnPEJt5MhG_j0aRcBWb-p-6o4pkHXoiyfXh9nHVBDw?width=256&height=192&cropmode=none",
  )
end

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}"
    )
end

puts "3 Technologies created"