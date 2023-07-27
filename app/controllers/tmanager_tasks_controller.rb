class TmanagerTasksController < ApplicationController
  before_action :set_task, only: %i[show edit update destroy]

  def index
    @tasks = TmanagerTask.all
  end

  def new
    @task = TmanagerTask.new
  end

  def show; end

  def create
    @task = TmanagerTask.create(task_params)
    redirect_to tmanager_task_path(@task)
  end

  def edit; end

  def update
    @task.update(task_params)
    redirect_to tmanager_task_path(@task)
  end

  def destroy
    @task.destroy
    redirect_to root_path, status: :see_other
  end
end

private

def set_task
  @task = TmanagerTask.find(params[:id])
end

def task_params
  params.require(:tmanager_task).permit(:title, :details, :completed)
end
