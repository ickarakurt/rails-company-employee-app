class CompaniesController < ApplicationController

    def index
        @companies = Company.all
    end

    def show
        @company = Company.find_by_id(params[:id])
    end

    def create
        cp = Company.create(name: params[:name], parent_id: params[:parent_id])
        redirect_to cp
    end

end