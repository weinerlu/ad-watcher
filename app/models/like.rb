class Like < ApplicationRecord
  belongs_to :user
  belongs_to :video

  def like(user, video)
    row = Like.find_or_initialize_by(user: user, video: video)
    row.save
  end
end
