class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :course

  validates :description, presence: true,
                    length: { minimum: 5 }
end
