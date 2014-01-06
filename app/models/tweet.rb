class Tweet < ActiveRecord::Base
  belongs_to :zombie

  def show_author_summary
    self.status = self.zombie.zombie_summary
  end

end
