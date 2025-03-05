require 'httparty'

# CharacterEpisode.destroy_all
# Character.destroy_all
# Burger.destroy_all
# Store.destroy_all
# Actor.destroy_all
# Episode.destroy_all

ep_url = 'https://bobsburgers-api.herokuapp.com/episodes'
character_url = 'https://bobsburgers-api.herokuapp.com/characters'
episodes = HTTParty.get(ep_url)
characters = HTTParty.get(character_url)


episodes.each do |episode|
  Episode.create(
    title: episode["name"],
    description: episode["description"],
    air_date: episode["airDate"],
    season: episode["season"],
    episode_number: episode["episode"]
  )
end

characters.each do |character|
  ep = Episode.find_by(title: character["firstEpisode"])

  char = ep.characters.find_or_create_by(
    name: character["name"],
    age: character["age"],
    gender: character["gender"],
    occupation: character["occupation"]
  )

  CharacterEpisode.create(character: char, episode: ep)
end
