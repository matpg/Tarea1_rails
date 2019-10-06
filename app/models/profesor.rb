class Profesor < ApplicationRecord
  belongs_to :user
  has_many :evaluations
  after_create :default 

  private def default



  	Profesor.update(id, :ranking => 0)
  	Profesor.update(id, :ev => 0)
  end
end
