require 'httparty'
require 'csv'

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
  actor = Actor.find_or_create_by(actor_name: character["voicedBy"])
  ep = Episode.find_by(title: character["firstEpisode"])

  if actor && actor.persisted?
    new_character = actor.characters.create(
      name: character ["name"],
      age: character["age"],
      gender: character["gender"],
      occupation: character["occupation"],
    )
  else
    new_character = Character.create(
      name: character ["name"],
      age: character["age"],
      gender: character["gender"],
      occupation: character["occupation"],
    )
  end

  if new_character.persisted?
    CharacterEpisode.create(character: new_character, episode: ep)
  end
end

puts "Created #{Actor.count} Actors"
puts "Created #{Character.count} Characters"

