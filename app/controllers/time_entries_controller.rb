class TimeEntriesController < ApplicationController

    def create
        @time_entry = TimeEntry.new(time_entry_params)
        
        respond_to do |format|
            if @time_entry.save
                format.html { redirect_to @time_entry }
                format.js
            else
                format.html { render :new, status: :unprocessable_entity }
                format.json { render json: @time_entry.errors, status: :unprocessable_entity }
            end
        end
    end

    def update
        @time_entry = TimeEntry.find(params[:id])
        respond_to do |format|
            if @time_entry.update(time_entry_params)
                format.html { redirect_to @time_entry }
                format.js
            end
        end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_time_entry
      @time_entry = TimeEntry.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def time_entry_params
      params.require(:time_entry).permit(:visit_id, :user_id, :start_time, :end_time, :status, :predicted)
    end
end
