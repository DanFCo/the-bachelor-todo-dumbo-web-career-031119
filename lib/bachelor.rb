
require"pry"



def get_first_name_of_season_winner(data, season)
name_of_winner = ""

  data.each do |attributes,v|
    if attributes == season
        v.each do |k|
          if k["status"] == "Winner"
          name_of_winner = k["name"].split(" ")[0]
          end
        end
      end
    end
    name_of_winner
  end

def get_contestant_name(data, occupation)
  contestant_name = ""

  data.each do |attributes,v|
    v.each do|k|
      if k["occupation"] == occupation
        contestant_name = k["name"]
      end
    end
  end
 contestant_name
end

def count_contestants_by_hometown(data, hometown)
  i=0
  data.each do|attributes,v|
    v.each do |k|
      if k["hometown"] == hometown
        i += 1
      end
    end
  end
  i
end

def get_occupation(data, hometown)
  occupation_of_contestant = ""

   data.each do|attributes,v|
     v.find do |k|
       if k["hometown"] == hometown
         occupation_of_contestant = k["occupation"]
       end
     end
   end
   occupation_of_contestant
end

def get_average_age_for_season(data, season)
    ages = []
    average = ""
  data.each do |attributes,v|
    if attributes == season
      v.each do |k|
        ages.push(k["age"].to_i)

         average = ages.inject {|sum, el| sum + el }.to_f / ages.size
       end
     end
   end
 average.round
 end
