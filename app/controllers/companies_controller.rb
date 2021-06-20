class CompaniesController < ApplicationController

    def index
        @companies = Company.all
        if params[:employees_count]
            @companies = @companies.filter{ |c| c.total_employees_count < params[:employees_count].to_i }
        end
    end

    def new
        @company = Company.new
    end

    def show
        @company = Company.find(params[:id])
    end

    def create
        @company = Company.new(company_params)
        if @company.save
            redirect_to @company
        else
            render 'new', status: :unprocessable_entity
        end
    end


    def destroy
        company = Company.find(params[:id])
        company.destroy
        redirect_to companies_path
    end

    def company_params
        params.require(:company).permit(:name, :parent_id)
    end

end