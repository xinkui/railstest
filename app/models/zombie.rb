class Zombie < ActiveRecord::Base
  validates :name, presence: true
  has_many :tweets

  def avatar_url
    "http://zombitar.com/#{id}.jpg"
  end

  def zombie_summary
    "#{name} lives in #{graveyard} and has #{self.tweets.size} tweets"
  end
end
