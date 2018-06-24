def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |contestant|
    contestant.each do |k, v|
      if v == "Winner"
        name = contestant["name"]
        first_name = name.split(" ").first
        return first_name
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  names = []
  data.each do |season, contestant|
    contestant.each do |stats|
      stats.each do |k, v|
        names << stats["name"] if v == occupation
      end
    end
  end
  names.join(", ")
end

def count_contestants_by_hometown(data, hometown)
  # code here
  names = []
  data.each do |season, contestant|
    contestant.each do |stats|
      stats.each do |k, v|
        names << stats["name"] if v == hometown
      end
    end
  end
  names.length
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestant|
    contestant.each do |stats|
      stats.each do |k, v|
        return stats["occupation"] if v == hometown
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  counter = 0
  total_age = 0
  data[season].each do |contestant|
    total_age += contestant["age"].to_f
    counter += 1
  end
  average_age = (total_age / counter).round
end
