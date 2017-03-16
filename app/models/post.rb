class Post < ActiveRecord::Base
  validates :link, :presence => true
  validates :title, :presence => true
  validates :user_id, :presence => true
  validates :votes, :presence => true
  belongs_to :user

  def vote_up
    vote = self.votes + 1
    vote
  end

end
