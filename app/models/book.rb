class Book < ApplicationRecord

  has_one_attached :image
  belongs_to :user
  # validates :name, presence: true, length: { minimum: 2 }
  # def get_image
  #   if image.attached?
  #     image
  #   else
  #     'no_image.jpg'
  #   end
  # end
  validates :title, presence: true
  validates :body, presence: true, length: { maximum: 200 }



end