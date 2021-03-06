require "pry"

def game_hash
  game_hash = {
    :home => {
              :team_name => "Brooklyn Nets",
              :colors => ["Black", "White"],
              :players => {
                  "Alan Anderson" => {
                    :number => 0,
                    :shoe => 16,
                    :points => 22,
                    :rebounds => 12,
                    :assists => 12,
                    :steals => 3,
                    :blocks => 1,
                    :slam_dunks => 1
                  },
                  "Reggie Evans" => {
                    :number => 30,
                    :shoe => 14,
                    :points => 12,
                    :rebounds => 12,
                    :assists => 12,
                    :steals => 12,
                    :blocks => 12,
                    :slam_dunks => 7
                  },
                  "Brook Lopez" => {
                    :number => 11,
                    :shoe => 17,
                    :points => 17,
                    :rebounds => 19,
                    :assists => 10, 
                    :steals => 3,
                    :blocks => 1,
                    :slam_dunks => 15,
                  },
                  "Mason Plumlee" => {
                    :number => 1,
                    :shoe => 19,
                    :points => 26,
                    :rebounds => 12,
                    :assists => 6,
                    :steals => 3,
                    :blocks => 8,
                    :slam_dunks => 5
                  },
                  "Jason Terry" => {
                    :number => 31,
                    :shoe => 15,
                    :points => 19,
                    :rebounds => 2,
                    :assists => 2,
                    :steals => 4,
                    :blocks => 11,
                    :slam_dunks => 1
                  }
                }
              },
              
    :away => {
              :team_name => "Charlotte Hornets",
              :colors => ["Turquoise", "Purple"],
              :players => {
              "Jeff Adrien" => {
                    :number => 4,
                    :shoe => 18,
                    :points => 10,
                    :rebounds => 1, 
                    :assists => 1, 
                    :steals => 2, 
                    :blocks => 7,
                    :slam_dunks => 2
                  },
                  "Bismak Biyombo" => {
                    :number => 0,
                    :shoe => 16,
                    :points => 12,
                    :rebounds => 4,
                    :assists => 7,
                    :steals => 7 ,
                    :blocks => 15,
                    :slam_dunks => 10
                  },
                  "DeSagna Diop" => {
                    :number => 2,
                    :shoe => 14, 
                    :points => 24, 
                    :rebounds => 12, 
                    :assists => 12,
                    :steals => 4, 
                    :blocks => 5,
                    :slam_dunks => 5
                  },
                  "Ben Gordon" => {
                    :number => 8,
                    :shoe => 15,
                    :points => 33, 
                    :rebounds => 3, 
                    :assists => 2, 
                    :steals => 1, 
                    :blocks => 1,
                    :slam_dunks => 0
                  },
                  "Brendan Haywood" => {
                    :number => 33,
                    :shoe => 15, 
                    :points => 6, 
                    :rebounds => 12, 
                    :assists => 12, 
                    :steals => 22, 
                    :blocks => 5, 
                    :slam_dunks => 12
                  }
              }
             }
  }
return game_hash
end
  
def num_points_scored(player_name)
  game_hash.each do |location, team_data|
    team_data[:players].each do |guy, stats|
      if guy== player_name
        return stats[:points]
     
end
end
end
end

def shoe_size(player_name)
  game_hash.each do |location, team_data|
    team_data[:players].each do |guy, stats|
      if guy == player_name
        return stats[:shoe]
end
end
end
end

def team_colors(team_name)
    game_hash.each do |location, team_data|
      if team_name == team_data[:team_name]
        return team_data[:colors]
end
end
end
      
def team_names
  teams = []
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if attribute == :team_name
        teams.push(data)
end
end
end
teams
end

def player_numbers(team)
  jersey_numbers = [ ]
  game_hash.each do |location, team_data|
    if team_data[:team_name] == team
      team_data[:players].each do |guy, num|
        jersey_numbers.push(num[:number])
end
end
end
jersey_numbers
end

def player_stats(players_name)
  game_hash.each do |location, team_data|
    team_data[:players].each do |guy, stats|
      if guy.to_s == players_name
    return stats
end
end
end
end

def big_shoe_rebounds
  biggest_shoe = 0
  big_shoe_name = ""
  boards = 0
  
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if attribute == :players
        data.each do |guy, stat|
      if stat[:shoe] > biggest_shoe
        big_shoe_name = guy
        biggest_shoe  = stat[:shoe]
        boards = stat[:rebounds]
end
end
end
end
end
boards
end

def most_points_scored
  most_points = 0 
  most_pts_name = ""
  
  game_hash.each do |location, team_data|
    team_data.each do |attribute, data|
      if attribute == :players
        data.each do |guy, stat|
          if stat[:points] > most_points
            most_points = stat[:points]
            most_pts_name = guy
  end
end
end
end
end
most_pts_name
end

def winning_team
  nets_score = 0
  hornets_score = 0 
  game_hash.each do |location, team_data|
    if team_data[:team_name]= "Brooklyn Nets"
      team_data[:players].each do |guy, stats|
        nets_score += stats[:points]
end
    else 
     team_data[:team_name]= "Charlotte Hornets"
      team_data[:players].each do |guy, stats|
        hornets_score += stats[:points]
end
end
end

if nets_score > hornets_score
  "Brooklyn Nets"
elsif 
  "Charlotte Hornets"
end
end

def player_with_longest_name
  longest_name = ""
  game_hash.each do |location, team_data|
   team_data[:players].each do |guy, stats|
     if longest_name == ""
       longest_name = guy.to_s
      elsif longest_name.length < guy.to_s.length
      longest_name = guy.to_s
end
end
end
longest_name
end

  
  
  