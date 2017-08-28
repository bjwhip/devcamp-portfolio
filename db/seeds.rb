10.times do |blog|
  Blog.create!(
    title: "Blog Post #{blog}",
    body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
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

9.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio #{portfolio_item}",
    subtitle: "This is # #{portfolio_item}",
    body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
    main_image: "http://assets.imgix.net/examples/treefrog.jpg?w=600&h=400&fit=crop",
    thumb_image: "http://assets.imgix.net/examples/treefrog.jpg?w=350&h=150&fit=crop",
  )
end
