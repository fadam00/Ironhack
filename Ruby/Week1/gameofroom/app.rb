require_relative("lib/lobby.rb")
require_relative("lib/rooms.rb")

@rooms = [
  Room_North.new("room1", "a dimly light room", "N"),
  Room_South.new("room2", "a long corridor with a dining table", "W"),
  Room_East.new("room3", "an outdoor garden fenced in with trees", "W"),
  Room_West.new("room4", "a dungeon filled with armor and weapons", "N"),
  Room_Secret.new("room5", "a treasure room with gold", "n/a")
]

start = Lobby.new

start.lobby_beginning

