class Post < ApplicationRecord
  validates :content, {presence: true, length: {maximum:500}}
  validates :title, {presence: true, length: {maximum:25}}
  validates :user_id, {presence: true}

  def user
    return Login.find_by(id: self.user_id)
  end
end
