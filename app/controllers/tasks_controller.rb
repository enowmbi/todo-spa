class TasksController < ApplicationController
  def index
    @tasks = Task.all
    @task = Task.new
  end

  def create
    task = Task.new(task_params)
    if task.save
      redirect_to root_path, notice: 'Task created successfully'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def task_params
    params.require(:task).permit(:description, :completed)
  end
end
