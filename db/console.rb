require("pry")
require_relative("../models/artist")
require_relative("../models/album")

artist1 = Artist.new(
  {'name' => 'A-ha'}
)
artist2 = Artist.new(
  {'name' => 'If These Trees Could Talk'}
)

artist1.save()
artist2.save()

album1 = Album.new(
  {
    'title' => 'Stay On These Roads',
    'genre' => 'pop',
    'artist_id' => artist1.id()
  }
)

album2 = Album.new(
  {
    'title' => 'Scoundrel Days',
    'genre' => 'pop',
    'artist_id' => artist1.id()
  }
)
album3 = Album.new(
  {
    'title' => 'The Bones Of a Dying World',
    'genre' => 'post-rock',
    'artist_id' => artist2.id()
  }
)

album1.save()
album2.save()
album3.save()

binding.pry
nil
