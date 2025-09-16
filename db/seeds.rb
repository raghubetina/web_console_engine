# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Clear existing posts to start fresh
Post.destroy_all

# Create sample posts
posts_data = [
  {
    title: "Getting Started with Rails Console",
    body: "The Rails console is a powerful tool for interacting with your application. You can query the database, test methods, and debug issues in a live environment."
  },
  {
    title: "Understanding Active Record",
    body: "Active Record is the M in MVC - the model - which is the layer of the system responsible for representing business data and logic. It facilitates the creation and use of business objects whose data requires persistent storage to a database."
  },
  {
    title: "Rails Routing Essentials",
    body: "The Rails router recognizes URLs and dispatches them to a controller's action, or to a Rack application. It can also generate paths and URLs, avoiding the need to hardcode strings in your views."
  },
  {
    title: "Working with Migrations",
    body: "Migrations are a convenient way to alter your database schema over time in a consistent way. They use a Ruby DSL so that you don't have to write SQL by hand, allowing your schema and changes to be database independent."
  },
  {
    title: "Rails Security Best Practices",
    body: "Security is crucial for web applications. Rails provides many built-in security features including protection against SQL injection, XSS, CSRF, and more. Always keep your Rails version updated and follow security best practices."
  },
  {
    title: "Testing Your Rails Application",
    body: "Rails makes it super easy to write your tests. It starts by producing skeleton test code while you are creating your models and controllers. By running your Rails tests you can ensure your code adheres to the desired functionality even after some major code refactoring."
  },
  {
    title: "Asset Pipeline Overview",
    body: "The asset pipeline provides a framework to concatenate and minify or compress JavaScript and CSS assets. It also adds the ability to write these assets in other languages and pre-processors such as CoffeeScript, Sass, and ERB."
  },
  {
    title: "Action Cable and WebSockets",
    body: "Action Cable seamlessly integrates WebSockets with the rest of your Rails application. It allows for real-time features to be written in Ruby in the same style and form as the rest of your Rails application."
  },
  {
    title: "Deploying Rails Applications",
    body: "There are many ways to deploy Rails applications, from traditional VPS hosting to modern PaaS solutions like Heroku. Each approach has its own advantages and considerations for scalability, cost, and maintenance."
  },
  {
    title: "Performance Optimization Tips",
    body: "Optimizing Rails application performance involves various strategies including database query optimization, caching, background jobs, and proper use of indexes. Monitoring tools can help identify bottlenecks."
  }
]

20.times do
  posts_data.each do |post_attrs|
    Post.create!(post_attrs)
  end
end

puts "Created #{Post.count} posts"
