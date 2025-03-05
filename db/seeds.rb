require 'httparty'

CharacterEpisode.destroy_all
Character.destroy_all
Burger.destroy_all
Store.destroy_all
Actor.destroy_all
# Episode.destroy_all

ep_url = 'https://bobsburgers-api.herokuapp.com/episodes'
character_url = 'https://bobsburgers-api.herokuapp.com/characters'
burger_url = 'https://bobsburgers-api.herokuapp.com/burgerOfTheDay'
store_url = 'https://bobsburgers-api.herokuapp.com/storeNextDoor'
episodes = HTTParty.get(ep_url)
characters = HTTParty.get(character_url)
burgers = HTTParty.get(burger_url)
stores = HTTParty.get(store_url)


# episodes.each do |episode|
#   Episode.create(
#     title: episode["name"],
#     description: episode["description"],
#     air_date: episode["airDate"],
#     season: episode["season"],
#     episode_number: episode["episode"]
#   )
# end

characters.each do |character|
  first_episode = character["firstEpisode"]

  if first_episode.nil?
    puts "No episode title found for character #{character["name"]}. Skipping..."
    next
  end

  first_episode = first_episode.strip.downcase
  ep = Episode.find_by("LOWER(title) = ?", first_episode)

  if ep.nil?
    puts "Episode not found for character #{character["name"]}"
    next
  end

  char = Character.find_or_create_by(
    name: character["name"],
    age: character["age"],
    gender: character["gender"],
    occupation: character["occupation"]
  )

  if char.persisted?
    CharacterEpisode.create(character: char, episode: ep)
    puts "Character #{char.name} associated with episode #{ep.title}"
  else
    puts "Failed to create #{character["name"]}"
  end
end

