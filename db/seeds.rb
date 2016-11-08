# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([
  {
    email: "dog@dog.com",
    password: "dog",
    password_confirmation: "dog"
  },
  {
    email: "cat@cat.com",
    password: "cat",
    password_confirmation: "cat"
  }
  ])

episodes = Episode.create([
                            { title: 'Kamp Krusty' },
                            { title: 'A Streetcar Named Marge' },
                            { title: 'Homer the Heretic' },
                            { title: 'Lisa the Beauty Queen' },
                            { title: 'Treehouse of Horror III' },
                            { title: 'Itchy and Scratchy: The Movie' },
                            { title: 'Marge Gets a Job' },
                            { title: 'New Kid on the Block' },
                            { title: 'Mr. Plow' },
                            { title: 'Lisa\'s First Word' },
                            { title: 'Homer\'s Triple Bypass' },
                            { title: 'Marge vs. the Monorail' },
                            { title: 'Selma\'s Choice' },
                            { title: 'Brother from the Same Planet' },
                            { title: 'I Love Lisa' },
                            { title: 'Duffless' },
                            { title: 'Last Exit to Springfield' },
                            { title: 'So It\'s Come to This: A Simpsons Clip Show' },
                            { title: 'The Front' },
                            { title: 'Whacking Day' },
                            { title: 'Marge in Chains' },
                            { title: 'Krusty Gets Kancelled' }
                          ])

playlists = Playlist.create([
    {
      user_id: 1,
      episode_id: 3
    },
    {
      user_id: 1,
      episode_id: 4
    },
    {
      user_id: 1,
      episode_id: 5
    },
    {
      user_id: 2,
      episode_id: 22
    },
    {
      user_id: 2,
      episode_id: 11
    },
    {
      user_id: 2,
      episode_id: 6
    }
  ])
