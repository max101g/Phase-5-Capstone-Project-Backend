class EmployersController < ApplicationController
    def create
        employer = Employer.create(employer_code: generate_code(12), company_name: params[:company_name], email: params[:email], verified: params[:verified])
        render json: employer, status: :created
    end 
    
    def index
        employers = Employer.all
        render json: employers, status: :ok
    end

    def show
        employer = find_employer
        render json: employer, status: :ok
    end

    def update
        employer = find_employer
        employer.update(employer_params)
        render json: employer, status: :ok
    end
    
    def destroy
        employer = find_employer
        employer.destroy
        head :no_content
    end

    private
    def find_employer
        Employer.find(params[:id])
    end

    def employer_params
        params.permit(:company_name, :email, :location, :avatar, :description, :verified)
    end
end
