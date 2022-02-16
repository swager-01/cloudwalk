# Software Engineer test



## 1. Run project

A simple ruby project, it's not pretty. 

Pre - requirements

Ruby installed in your machine

After than, just ru 
    > ruby main.rb

I'm begining in Ruby, I passing out with the variables and methods scope :|


## 2. Tasks

### 3.1. Log parser

[v]Create a project to parse the Quake log file.

[v]Read file from github

[v]create a tmp file locally

[v] Group the game data of each match

[x] Collect kill data

#### TODO
    > Collect kill data
    > Segregate main class and convert some functions to pure
    > Group result in a Json

```json
"game_1": {
"total_kills": 45,
"players": ["Dono da bola", "Isgalamido", "Zeh"],
"kills": {
  "Dono da bola": 5,
  "Isgalamido": 18,
  "Zeh": 20
  }
}
```

Additional notes:

1. When `<world>` kill a player, that player loses -1 kill score.
2. Since `<world>` is not a player, it should not appear in the list of players or in the dictionary of kills.
3. The counter `total_kills` includes player and world deaths.

[x] Report
 > I begun a symbol structure like an enum, but I've problems in recognize from log file (kill.rb)
