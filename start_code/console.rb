require_relative('models/casting')
require_relative('models/movie')
require_relative('models/star')


require('pry')

movie1 = Movie.new({
'title' => 'The Big Lebowski',
'genre' => 'Comedy'
  })


movie2 = Movie.new({
'title' => 'Bohemian Rhapsody',
'genre' => 'Biography'
  })

movie3 = Movie.new({
  'title' => 'Avengers: End Game',
  'genre' => 'Action'
  })

movie4 = Movie.new({
  'title' => 'Trainspotting 2',
  'genre' => 'Adventure'
  })
#----------------------------------------------------
  star1 = Star.new({
  'first_name' => 'Daniel',
  'last_name' => 'Craig'
    })

  star2 = Star.new({
  'first_name' => 'Maggie',
  'last_name' => 'Diaz'
  })

  star3 = Star.new({
  'first_name' => 'James',
  'last_name' => 'Bond'
    })
#----------------------------------------------------

casting1 = Casting.new({
  'movie_id' => movie1.id,
  'star_id' => star1.id,
  'fee' => 200000
  })

casting2 = Casting.new({
  'movie_id' => movie2.id,
  'star_id' => star2.id,
  'fee' => 5000
 })

casting3 = Casting.new({
  'movie_id' => movie3.id,
  'star_id' => star1.id
  'fee' => 57000
 })

casting4 = Casting.new({
  'movie_id' => movie4.id,
  'star_id' => star3.id,
  'fee' => 8700
    })


binding.pry
nil
