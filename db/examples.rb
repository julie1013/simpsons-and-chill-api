# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# %w(antony jeff matt jason).each do |name|
#   email = "#{name}@#{name}.com"
#   next if User.exists? email: email
#   User.create!(email: email,
#                password: 'abc123',
#                password_confirmation: nil)
# end

[
  {
    email: 'dog@dog.com',
    password: 'dog',
    password_confirmation: 'dog'
  },
  {
    email: 'cat@cat.com',
    password: 'cat',
    password_confirmation: 'cat'
  }
].each do |user|
  next if User.exists? email: user[:email]
  User.create!(user)
end

[
  {
    user: User.find_by(email: 'dog@dog.com'),
    episode: Episode.find_by(title: 'Mr. Plow')
  },
  {
    user: User.find_by(email: 'dog@dog.com'),
    episode: Episode.find_by(title: 'Kamp Krusty')
  },
  {
    user: User.find_by(email: 'dog@dog.com'),
    episode: Episode.find_by(title: 'Lisa the Beauty Queen')
  },
  {
    user: User.find_by(email: 'cat@cat.com'),
    episode: Episode.find_by(title: 'Krusty Gets Kancelled')
  },
  {
    user: User.find_by(email: 'cat@cat.com'),
    episode: Episode.find_by(title: 'A Streetcar Named Marge')
  },
  {
    user: User.find_by(email: 'cat@cat.com'),
    episode: Episode.find_by(title: 'New Kid on the Block')
  }
].each do |playlist|
  next if Playlist.exists?(
    user: playlist[:user],
    episode: playlist[:episode]
  )
  Playlist.create!(playlist)
end
