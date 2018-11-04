class Show < ActiveRecord::Base 
  
  def self.highest_rating
  Show.maximum('rating')
  end 
  
  def self.most_popular_show
    r = Show.highest_rating
    Show.find_by(rating: r)
  end 

end 