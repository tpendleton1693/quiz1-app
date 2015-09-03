class Quiz < ActiveRecord::Base


  def common
    if self.sport.upcase == "GOLF" || self.sport.upcase == "BASEBALL" || self.sport.upcase == "BOWLING"
      true
    end
  end
end
