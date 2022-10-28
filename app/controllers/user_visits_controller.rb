class UserVisitsController < ApplicationController
    def create
        @user_visit = UserVisit.new(user_visit_params)
        # @user = User.find(params[:id])
        # @visit = Visit.find(params[:visit_id])
        respond_to do |format|
            if @user_visit.save
              format.html { redirect_to @user_visit }
              format.js
            else
              format.html { render :new, status: :unprocessable_entity }
              format.json { render json: @user_visit.errors, status: :unprocessable_entity }
            end
          end
    end


    private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_visit
      @visit = UserVisit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_visit_params
      params.require(:user_visit).permit(:visit_id, :user_id)
    end
end
