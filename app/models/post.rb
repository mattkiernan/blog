class Post < ActiveRecord::Base
  def pretty_time
    self.created_at.in_time_zone(-5).strftime("%m-%d-%Y")
  end
end
