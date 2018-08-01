require("pry")
require_relative("../models/artist")
require_relative("../models/album")

artist1 = Artist.new(
  {'name' => 'A-ha'}
)

artist1.save()

album1 = Album.new(
  {'title' => 'Stay On These Roads',
  'genre' => 'pop',
  'artist_id' => artist1.id()
  }
)

album1.save()

binding.pry
nil
