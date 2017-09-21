# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
Category.destroy_all
Film.destroy_all
User.destroy_all
Comment.destroy_all
Rating.destroy_all
Review.destroy_all


Category.create([{
  title: "Romance"
  }])

Category.create([{
  title: "Horror"
  }])

Category.create([{
  title: "Sci-fi"
  }])



Film.create([{
  title: 'Star Wars',
  film_description: 'Wow...space in a galaxy far-far away',
  category_id: 3
  }])

Film.create([{
  title: 'Lord of the Rings',
  film_description: 'So lordy and ringy',
  category_id: 3
  }])

Film.create([{
  title: 'I Know What You Did Last Summer',
  film_description: 'A gang of high schoolers always run the way you are not supposed to run',
  category_id: 2
  }])

Film.create([{
  title: 'Love Actually',
  film_description: 'I feel it in my fingers...I feel it in my tu-ohhhsss',
  category_id: 1
  }])

User.create([{
  email: "Roger@roger.com",
  password: "password",
  trusted_status: true
  }])

User.create([{
  email: "Dillon@dillon.com",
  password: "password",
  trusted_status: false
  }])

Review.create([{
  film_id: 1,
  body: "I loved this movie so much, it made me cry!",
  trusted_user_id: 1
  }])

#commenting on a film; non trusted user
Comment.create([{
  commentable_id: 2,
  commentable_type: "Film",
  user_id: 2,
  description: "I love sci-fi. Smeeegle"
  }])

#commenting on a review; non-trusted user
Comment.create([{
  commentable_id: 1,
  commentable_type: "Review",
  user_id: 2,
  description: "I disagree with this review."
  }])

#rating on a film
Rating.create([{
  ratable_id: 3,
  ratable_type: "Film",
  user_id: 1,
  rating: 5
  }])

#rating on a review
Rating.create([{
  ratable_id: 1,
  ratable_type: "Review",
  user_id: 2,
  rating: 2
  }])
