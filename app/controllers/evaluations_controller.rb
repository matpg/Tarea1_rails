class EvaluationsController < ApplicationController

	def create
	    @profesor = Profesor.find(params[:profesor_id])

	    @evaluation = @profesor.evaluations.create(evaluation_params)
	    redirect_to profesor_path(@profesor)
	  end
 
  private
    def evaluation_params
    	if Student.find_by(user_id: current_user[:id])
    		s_id = Student.find_by(user_id: current_user[:id]).id 
    	end

      	params.require(:evaluation).permit(:description, :student_id, :mark).merge(student_id: s_id)
    end
end
