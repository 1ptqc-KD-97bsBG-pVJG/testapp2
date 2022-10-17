class VisitsController < ApplicationController
  before_action :set_visit, only: %i[ show edit update destroy ]

  # GET /visits or /visits.json
  def index
    @visits = Visit.all
  end

  # GET /visits/1 or /visits/1.json
  def show
  end

  # GET /visits/new
  def new
    @visit = Visit.new
    @todo = @visit.todos.new
    authorize! :manage, @visit
    # @todo = @visit.todos.build
    # @visit.todos.build
  end

  # GET /visits/1/edit
  def edit
  end

  # POST /visits or /visits.json
  def create
    @visit = Visit.new(visit_params)
    # @visit.todos.build(visit_params[:todo])
    # todo = Todo.new
    # todo.content = visit_params[:todo][:content]
    # todo.save

    # @visit.todos = Todo.new(visit_params[:todo_attributes])

    respond_to do |format|
      if @visit.save
        format.html { redirect_to visit_url(@visit), notice: "Visit was successfully created." }
        format.json { render :show, status: :created, location: @visit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visits/1 or /visits/1.json
  def update
    respond_to do |format|
      if @visit.update(visit_params)
        format.html { redirect_to visit_url(@visit), notice: "Visit was successfully updated." }
        format.json { render :show, status: :ok, location: @visit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @visit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visits/1 or /visits/1.json
  def destroy
    @visit.destroy

    respond_to do |format|
      format.html { redirect_to visits_url, notice: "Visit was successfully destroyed." }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visit
      @visit = Visit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def visit_params
      params.require(:visit).permit(:status, :scheduled_date, :scheduled_start, :scheduled_end, :scheduled_dudes,
      todos_attributes: [:id, :visit_id, :content, :is_complete, :completed_by_id, :completed_time, :created_ad, :updated_at])
    end
end
