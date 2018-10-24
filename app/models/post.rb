class Post < ApplicationRecord
  validates :content, {presence: true, length: {maximum:500}}
  validates :title, {presence: true, length: {maximum:25}}
end
