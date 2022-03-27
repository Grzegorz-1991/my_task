class PersonController < ApplicationController
    before_action :set_person, only:[:show,:edit,:update,:destroy]

    def index
        @person = Person.all
    end

    def show

    end

    def edit
        @edit_new = person_path
        @new_edit_btn = "Edytuj"
    end

    def update
        if @person.update(params_person)
            flash[:notice] = 'Poprawnie edytowano'
            redirect_to @person
        else
            render 'edit'
        end
    end
    
    def new
        @new_edit_btn = "Dodaj"
        @edit_new = person_index_path
        @person = Person.new

    end
    
    def create
        @person = Person.new(params_person)
        if @person.save
            flash[:notice] = "Poprawnie dodano"
            redirect_to @person
        else
            render 'new'
        end
    end

    def destroy
        @person.destroy
        redirect_to person_index_path
    end

    private

    def set_person
        @person = Person.find(params[:id])
    end

    def params_person
        params.require(:person).permit(:name,:surname,:email,:telephone,:position)
    end
end