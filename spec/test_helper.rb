def load_test_data
  
# Data
  date = Date.yesterday.strftime('%F')
  lat1 = "-15.74"
  lon1 = "-54.34"
  lat2 = "36.53"
  lon2 = "-116.93"
  lat3 = "39.74"
  lon3 = "-104.99"
  lat4 = "39.95"
  lon4 = "-105.82"
  lat5 = "47.51"
  lon5 = "-111.28"
  lat6 = "-24.06"
  lon6 = "23.3"
  lat7 = "15.12"
  lon7 = "105.82"
  lat8 = "-10.72"
  lon8 = "142.46"
  lat9 = "-23.86"
  lon9 = "-69.14"
  lat10 = "46.8"
  lon10 = "10.3"
  lat11 = "62.04"
  lon11 = "129.74"
  lat12 = "78.22"
  lon12 = "15.63"
  lat13 = "27.99"
  lon13 = "86.93"
  lat14 = "14.24"
  lon14 = "40.92"
  wf = WeatherFacade.new
  data11 = wf.weather_data(lat11, lon11, date)
  data12 = wf.weather_data(lat12, lon12, date)
  data13 = wf.weather_data(lat13, lon13, date)
  data14 = wf.weather_data(lat14, lon14, date)


  # Users
  @user1 = User.create!(username: "username1", email: "user1@gmail.com", password: "password1")
  @user2 = User.create!(username: "username2", email: "user2@gmail.com", password: "password2")
  @user3 = User.create!(username: "username3", email: "user3@gmail.com", password: "password3")
  @user4 = User.create!(username: "username4", email: "user4@gmail.com", password: "password4")
  @user5 = User.create!(username: "username5", email: "user5@gmail.com", password: "password5")
  @user6 = User.create!(username: "username6", email: "user6@gmail.com", password: "password6")
  @user7 = User.create!(username: "username7", email: "user7@gmail.com", password: "password7")
  @user8 = User.create!(username: "username8", email: "user8@gmail.com", password: "password8")
  @user9 = User.create!(username: "username9", email: "user9@gmail.com", password: "password9")
  @user10 = User.create!(username: "username10", email: "user10@gmail.com", password: "password10")

  # Games
    @game1 = Game.create!(length_in_days: 1000000, guess_lead_time: 3, player_cap: 10000, game_type: 0, results: nil)
  
  # Rounds

    @round2 = Round.create!(game_id: @game1.id, 
          location_name: data12[:location][:name],
          region: data12[:location][:region],
          country: data12[:location][:country],
          lat: data12[:location][:lat],
          lon: data12[:location][:lon],
          maxtemp_f: data12[:weather_data][:maxtemp_f],
          mintemp_f: data12[:weather_data][:mintemp_f],
          maxwind_mph: data12[:weather_data][:maxwind_mph],
          totalprecip_in: data12[:weather_data][:totalprecip_in],
          avgvis_miles: data12[:weather_data][:avgvis_miles],
          avghumidity: data12[:weather_data][:avghumidity],
          daily_chance_of_rain: data12[:weather_data][:daily_chance_of_rain],
          daily_chance_of_snow: data12[:weather_data][:daily_chance_of_snow])
    @round1 = Round.create!(game_id: @game1.id,
          location_name: data11[:location][:name],
          region: data11[:location][:region],
          country: data11[:location][:country],
          lat: data11[:location][:lat],
          lon: data11[:location][:lon],
          maxtemp_f: data11[:weather_data][:maxtemp_f],
          mintemp_f: data11[:weather_data][:mintemp_f],
          maxwind_mph: data11[:weather_data][:maxwind_mph],
          totalprecip_in: data11[:weather_data][:totalprecip_in],
          avgvis_miles: data11[:weather_data][:avgvis_miles],
          avghumidity: data11[:weather_data][:avghumidity],
          daily_chance_of_rain: data11[:weather_data][:daily_chance_of_rain],
          daily_chance_of_snow: data11[:weather_data][:daily_chance_of_snow]
          )
    @round3 = Round.create!(game_id: @game1.id, 
          location_name: data13[:location][:name],
          region: data13[:location][:region],
          country: data13[:location][:country],
          lat: data13[:location][:lat],
          lon: data13[:location][:lon],
          maxtemp_f: data13[:weather_data][:maxtemp_f],
          mintemp_f: data13[:weather_data][:mintemp_f],
          maxwind_mph: data13[:weather_data][:maxwind_mph],
          totalprecip_in: data13[:weather_data][:totalprecip_in],
          avgvis_miles: data13[:weather_data][:avgvis_miles],
          avghumidity: data13[:weather_data][:avghumidity],
          daily_chance_of_rain: data13[:weather_data][:daily_chance_of_rain],
          daily_chance_of_snow: data13[:weather_data][:daily_chance_of_snow])
    @round4 = Round.create!(game_id: @game1.id, 
          location_name: data14[:location][:name],
          region: data14[:location][:region],
          country: data14[:location][:country],
          lat: data14[:location][:lat],
          lon: data14[:location][:lon],
          maxtemp_f: data14[:weather_data][:maxtemp_f],
          mintemp_f: data14[:weather_data][:mintemp_f],
          maxwind_mph: data14[:weather_data][:maxwind_mph],
          totalprecip_in: data14[:weather_data][:totalprecip_in],
          avgvis_miles: data14[:weather_data][:avgvis_miles],
          avghumidity: data14[:weather_data][:avghumidity],
          daily_chance_of_rain: data14[:weather_data][:daily_chance_of_rain],
          daily_chance_of_snow: data14[:weather_data][:daily_chance_of_snow])
  # Votes
    @vote1 = Vote.create!(user_id: @user1.id, round_id: @round1.id, lat: lat1, lon: lon1)
    @vote2 = Vote.create!(user_id: @user2.id, round_id: @round1.id, lat: lat2, lon: lon2)
    @vote3 = Vote.create!(user_id: @user3.id, round_id: @round1.id, lat: lat3, lon: lon3)
    @vote4 = Vote.create!(user_id: @user4.id, round_id: @round1.id, lat: lat4, lon: lon4)
    @vote5 = Vote.create!(user_id: @user5.id, round_id: @round1.id, lat: lat5, lon: lon5)
    @vote6 = Vote.create!(user_id: @user6.id, round_id: @round1.id, lat: lat6, lon: lon6)
    @vote7 = Vote.create!(user_id: @user7.id, round_id: @round1.id, lat: lat7, lon: lon7)
    @vote8 = Vote.create!(user_id: @user8.id, round_id: @round1.id, lat: lat8, lon: lon8)
    @vote9 = Vote.create!(user_id: @user9.id, round_id: @round1.id, lat: lat9, lon: lon9)
    @vote10 = Vote.create!(user_id: @user10.id, round_id: @round1.id, lat: lat10, lon: lon10)

    UserGame.create!(user_id: @user1.id, game_id: @game1.id)
    UserGame.create!(user_id: @user2.id, game_id: @game1.id)
end

def load_query_test_data 
      # Create admin user (user1)
      user1 = User.create(username: 'user1', email: 'user1@example.com', password: 'password', verified: 1)

      # Create invitee user (user2)
      user2 = User.create(username: 'user2', email: 'user2@example.com', password: 'password', verified: 1)

      # Create a competitive game
      competitive_game = Game.create(name: 'Competitive Game', length_in_days: nil, guess_lead_time: 3, player_cap: nil, status: 0, game_type: 1)

      # Create rounds for the competitive game
      (1..4).each do |day|
      round = Round.create(game: competitive_game, close_date: (Date.today + day).to_s, process_date: (Date.today + day + 1).to_s, location_name: 'Competitive Location', region: 'Region', country: 'Country', lat: (34.0522 + rand(-0.01..0.01)).to_s, lon: (-118.2437 + rand(-0.01..0.01)).to_s, maxtemp_f: 75.0, mintemp_f: 60.0, maxwind_mph: 10.0, totalprecip_in: 0.1, avgvis_miles: 5.0, avghumidity: 50.0, daily_chance_of_rain: 10, daily_chance_of_snow: 5)
      
      # Create votes for each user in the round
      Vote.create(user: user1, round: round, lat: (34.0522 + rand(-0.01..0.01)).to_s, lon: (-118.2437 + rand(-0.01..0.01)).to_s, status: 0, score: rand(1..100))
      Vote.create(user: user2, round: round, lat: (40.7128 + rand(-0.01..0.01)).to_s, lon: (-74.0060 + rand(-0.01..0.01)).to_s, status: 0, score: rand(1..100))
      end

      # Create a daily game
      daily_game = Game.create(name: 'Daily Game', length_in_days: 5, status: 0, game_type: 0)

      # Create rounds for the daily game
      (1..4).each do |day|
      round = Round.create(game: daily_game, close_date: (Date.today + day).to_s, process_date: (Date.today + day + 1).to_s, location_name: 'Daily Location', region: 'Region', country: 'Country', lat: (37.7749 + rand(-0.01..0.01)).to_s, lon: (-122.4194 + rand(-0.01..0.01)).to_s, maxtemp_f: 70.0, mintemp_f: 55.0, maxwind_mph: 8.0, totalprecip_in: 0.2, avgvis_miles: 6.0, avghumidity: 60.0, daily_chance_of_rain: 15, daily_chance_of_snow: 0)
      
      # Create votes for each user in the round
      Vote.create(user: user1, round: round, lat: (37.7749 + rand(-0.01..0.01)).to_s, lon: (-122.4194 + rand(-0.01..0.01)).to_s, status: 0, score: rand(1..100))
      end


end