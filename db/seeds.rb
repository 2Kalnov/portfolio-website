(0...10).each do |post_index|
  Blog.create!(title: "Some post about programming #{post_index}", body: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Recusandae in corrupti illo labore, asperiores rerum at quis velit officiis voluptas molestiae animi unde. Perspiciatis veniam ullam voluptatem, beatae magni nostrum error nihil? Ea ipsa odit dignissimos quidem dolore odio explicabo possimus hic quo veniam reiciendis quibusdam qui dicta natus consequatur nobis eveniet cumque beatae ratione esse debitis quisquam, ab nam? Id a, odit impedit obcaecati optio necessitatibus sint, fugit nam voluptatibus, nihil aut maiores odio. Aspernatur adipisci consequuntur provident nulla eaque omnis, dolorum dolore amet, distinctio illum quas assumenda quisquam! Et dolorem eos, porro molestias ab dicta omnis impedit nemo!")
end

puts "Blog posts created"

skills = [
  {title: "Rails", level: 30},
  {title: "JavaScript", level: 60},
  {title: "HTML", level: 70},
  {title: "CSS", level: 60},
  {title: "React", level: 40}
]

skills.each { |skill| Skill.create!(title: skill[:title], level: skill[:level])}

puts "Data about skills created"

9.times do |portfolio_item_index|
  Portfolio.create!(
    title: "Portfolio item #{portfolio_item_index}",
    subtitle: "Web project",
    body: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Soluta culpa libero dicta voluptate et neque ullam, rerum atque dolorem laborum dolor molestiae quos. Praesentium ducimus necessitatibus blanditiis quidem excepturi ipsa non, commodi pariatur qui minima ratione explicabo ut, ullam id.",
    main_image: "placehold.it/250x150",
    thumb_image: "placehold.it/500x300"  
  )
end

puts "Created portfolio items"