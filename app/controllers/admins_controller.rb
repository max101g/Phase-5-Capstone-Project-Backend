class AdminsController < ApplicationController
    def create
        admin = Admin.create(admin_code: generate_code(12), full_name: params[:full_name], email: params[:email], user_code: params[:user_code])
        render json: admin, status: :created
    end 
    
    def index
        admins = Admin.all
        render json: admins, status: :ok
    end

    def show
        admin = find_admin
        render json: admin, status: :ok
    end

    private
    def find_admin
        Admin.find(params[:id])
    end
end
