class ComponentController < ApplicationController
  def index
    @tasks = Task.all
    @article = Article.all
    @ranking = [1,2,3,4,5]
  end
  
  
  def complete_tasks
    Task.update_all(completed: false)
    Task.where(id: params[:task_id]).update_all(completed: true)

    redirect_to tasks_path  
  end
  
  def complete_rating
  end


end
