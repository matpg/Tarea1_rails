class Evaluation < ApplicationRecord
  belongs_to :student
  belongs_to :profesor

  after_validation :update_ranking

  private def update_ranking

  	prof = Profesor.find(profesor_id)

  	if prof.ev 
  		suma = prof.ev + 1
  		rank = ((prof.ranking*prof.ev) + mark)/suma
  	else
  		suma = 1
  		rank =  mark
  	end



  	Profesor.update(profesor_id, :ranking => rank)
  	Profesor.update(profesor_id, :ev => suma)
  end

end
