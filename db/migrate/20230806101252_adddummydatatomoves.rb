class Adddummydatatomoves < ActiveRecord::Migration[7.0]
  def change
    10.times do |k|
      puts "addng #{k}"
      Movie.create(title: "Movie#{k}", description: "description of movie #{k}", release_year: 2020, rating: 4.5,status: "public")
    end
  end
end
