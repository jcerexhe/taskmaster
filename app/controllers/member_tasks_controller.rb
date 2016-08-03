class MemberTasksController < ApplicationController
  before_action :set_member_task, only: [:show, :edit, :update, :destroy]

  # GET /member_tasks
  # GET /member_tasks.json
  def index
    @member_tasks = MemberTask.all
  end

  # GET /member_tasks/1
  # GET /member_tasks/1.json
  def show
  end

  # GET /member_tasks/new
  def new
    @member_task = MemberTask.new
  end

  # GET /member_tasks/1/edit
  def edit
  end

  # POST /member_tasks
  # POST /member_tasks.json
  def create
    @member_task = MemberTask.new(member_task_params)

    respond_to do |format|
      if @member_task.save
        format.html { redirect_to @member_task, notice: 'Member task was successfully created.' }
        format.json { render :show, status: :created, location: @member_task }
      else
        format.html { render :new }
        format.json { render json: @member_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /member_tasks/1
  # PATCH/PUT /member_tasks/1.json
  def update
    respond_to do |format|
      if @member_task.update(member_task_params)
        format.html { redirect_to @member_task, notice: 'Member task was successfully updated.' }
        format.json { render :show, status: :ok, location: @member_task }
      else
        format.html { render :edit }
        format.json { render json: @member_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /member_tasks/1
  # DELETE /member_tasks/1.json
  def destroy
    @member_task.destroy
    respond_to do |format|
      format.html { redirect_to member_tasks_url, notice: 'Member task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member_task
      @member_task = MemberTask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_task_params
      params.require(:member_task).permit(:member, :task, :task_type)
    end
end
