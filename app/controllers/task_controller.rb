class TaskController < ApplicationController
    before_action :set_task, only:[:show,:edit,:update,:destroy]

    def index
        @task = Task.all
    end

    def show

    end

    def edit
        @edit_new = task_path
        @new_edit_btn = "Edytuj"
    end

    def update
        if @task.update(params_task)
            flash[:notice] = 'Poprawnie edytowano'
            redirect_to @task
        else
            render 'edit'
        end
    end
    
    def new
        @new_edit_btn = "Dodaj"
        @edit_new = task_index_path
        @task = Task.new

    end
    
    def create
        @task = Task.new(params_task)
        if @task.save
            flash[:notice] = "Poprawnie dodano"
            redirect_to @task
        else
            render 'new'
        end
    end

    def destroy
        @task.destroy
        redirect_to task_index_path
    end

    private

    def set_task
        @task = Task.find(params[:id])
    end

    def params_task
        params.require(:task).permit(:state,:descripton,:date_of_order,:start_date,:end_time,
        steps_attributes:[:id,:content,:worker,:_destroy])
    end
end