class EmployeesController < ApplicationController

    def index
        @employees = Employee.all
    end

    def new
        @employee = Employee.new
    end

    def show
        @employee = Employee.find(params[:id])
    end

    def create
        @employee = Employee.new(employee_params)
        if @employee.save
            redirect_to @employee
        else
            render 'new', status: :unprocessable_entity
        end
    end


    def destroy
        employee = Employee.find(params[:id])
        employee.destroy
        redirect_to employees_path
    end

    def employee_params
        params.require(:employee).permit(:name, :company_id)
    end

end