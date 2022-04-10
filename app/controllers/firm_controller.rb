class FirmController < ApplicationController
    before_action :set_firm, only:[:show,:edit,:update,:destroy]

    def index
        @firm = Firm.all
    end

    def show

    end

    def edit
        @edit_new = firm_path
        @new_edit_btn = "Edytuj"
    end

    def update
        if @firm.update(params_firm)
            flash[:notice] = 'Poprawnie edytowano'
            redirect_to @firm
        else
            render 'edit'
        end
    end
    
    def new
        @new_edit_btn = "Dodaj"
        @edit_new = firm_index_path
        @firm = Firm.new

    end
    
    def create
        @firm = Firm.new(params_firm)
        if @firm.save
            flash[:notice] = "Poprawnie dodano"
            redirect_to @firm
        else
            render 'new'
        end
    end

    def destroy
        @firm.destroy
        redirect_to firm_index_path
    end

    private

    def set_firm
        @firm = Firm.find(params[:id])
    end

    def params_firm
        params.require(:firm).permit(
            :firm_name,
            :firm_nip,
            :firm_adress_street,
            :firm_adress_street_number,
            :firm_adress_home_number,
            :firm_city,
            :firm_zip_code)
    end
end