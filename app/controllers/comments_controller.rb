class CommentsController < ApplicationController

    def create
      @course = Course.find(params[:course_id])
      @comment = @course.comments.create(comment_params)
      redirect_to course_path(@course)
    end
   
    private
      def comment_params
        params.require(:comment).permit(:user_id, :description).merge(user_id: current_user[:id])
      end
  end
  