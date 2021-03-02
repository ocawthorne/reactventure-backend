# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Entity.delete_all
EntityInteraction.delete_all

#! DO NOT MODIFY BELOW HERE - This data is used for the story.
#! The state in which the entities are initialised are in default state.
#! In other words, the user will modify the boolean values as they progress through the game.
#? Objects

Entity.create(
   name: "crowbar",
   description: "Just a rusty old crowbar.",
   broken: false,
   description_broken: "The crowbar snapped clean in two. Useless now.",
   feel: "It's coarse and cold to the touch.",
   obtainable: true,
   available: true
)

Entity.create(
   name: "door",
   description: "It's locked.",
   description_broken: "",
   broken: false,
   feel: "I thought the door was wooden in this light, but it's actually just very rusty.",
   obtainable: false,
   available: true
)

Entity.create(
   name: "desk",
   description: "The desk is surprisingly intact compared to the rest of my surroundings.\nThere is a drawer on the left hand side.",
   broken: false,
   feel: "The wood is smooth and rich-feeling.",
   obtainable: false,
   available: true
)

Entity.create(
   name: "drawer",
   description: "The drawer is part of the desk. Obviously. It isn't locked, though!",
   broken: false,
   feel: "It feels like the desk.",
   obtainable: false,
   available: true
)

Entity.create(
   name: "paper",
   description: "The paper is blotted with strange symbols in a reddish-brown colour. I hope the ink isn't what I think it is.",
   broken: false,
   feel: "It feels like it could crumble in my fingers if I'm not careful.",
   obtainable: true,
   available: true
)

Entity.create(
   name: "candle",
   description: "The candle burns with a soft glow. There is plenty of wax, so I'm not worried about it going out.",
   broken: false,
   feel: "It's just wax. I'm not going to touch the fire.",
   obtainable: true,
   available: true
)

Entity.create(
   name: "chest",
   description: "It's an old chest. It looks like it could take a bit of force to open.",
   description_broken: "The chest is a slightly dented, but wide open.\nThere's a large block of ice inside with something glinting inside it.",
   broken: false,
   feel: "I don't want to get splinters from this thing.",
   obtainable: false,
   available: true
)

Entity.create(
   name: "ice",
   description: "It looks like there's a key trapped in the ice.",
   description_broken: "The ice has been reduced to a puddle of water. Take that!",
   broken: false,
   feel: "My hands are cold enough already.",
   obtainable: true,
   available: false
)

Entity.create(
   name: "key",
   description: "The key looks like it will fit into the door. Surely it can't be this easy to escape...?",
   description_broken: "The key is stuck in the door. At least I got it open.",
   broken: false,
   feel: "It's a heavy old key.",
   obtainable: true,
   available: false
)

#? Entity Interactions, sorted alphabetically.

EntityInteraction.create(
   entity_1: "crowbar",
   entity_2: "door",
   result_text: "I spent a few minutes wrangling with the door, but nothing happened.",
   action: nil,
   available: false
)

EntityInteraction.create(
   entity_1: "candle",
   entity_2: "paper",
   result_text: "I don't think I should burn that. It could come in useful if I can find out what it means.",
   action: nil,
   available: false
)

EntityInteraction.create(
   entity_1: "candle",
   entity_2: "desk",
   result_text: "Are you crazy? I'd suffocate in here!",
   action: nil,
   available: false
)

EntityInteraction.create(
   entity_1: "chest",
   entity_2: "crowbar",
   result_text: "SNAP.\nThe crowbar split clean in half, but weakened the chest enough for it to open.",
   action: "openedChest",
   available: false
)

EntityInteraction.create(
   entity_1: "door",
   entity_2: "key",
   result_text: "The key made an unconvincing snap, but the door swung open!\nThe key is stuck in the door.",
   action: "completedGame",
   available: false
)

EntityInteraction.create(
   entity_1: "candle",
   entity_2: "ice",
   result_text: "After a couple of minutes, the ice melts away. I got the key!",
   action: "meltedIce",
   available: false
)
