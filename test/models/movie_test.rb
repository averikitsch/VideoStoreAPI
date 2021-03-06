require "test_helper"

describe Movie do
  let(:magic) { movies(:magic) }

  it "must be valid" do
    magic.valid?.must_equal true
  end

  it "must have all required fields to be valid" do
    new_movie = Movie.new( release_date: "2017-11-10", overview: "something", inventory: 10)
    new_movie.valid?.must_equal false

    new_movie = Movie.new( title: "something", overview: "something", inventory: 10)
    new_movie.valid?.must_equal false

    new_movie = Movie.new( release_date: "2017-11-10", title: "something", inventory: 10)
    new_movie.valid?.must_equal false

    new_movie = Movie.new( release_date: "2017-11-10", overview: "something", title: "something")
    new_movie.valid?.must_equal false


  end
end
