class JobsController < ApplicationController
    def create
        job = Job.create(job_code: generate_code(12), name:params[:name], jobtag_code: params[:jobtag_code], employer_code: params[:employer_code])
        render json: job, status: :created
    end

    def index
        jobs = Job.all
        render json: jobs, status: :ok
    end

    def show
        job = find_job
        render json: job, status: :ok
    end

    # '/job/:id' edits an job of id in params(Update)
    def update
        job = find_job
        job.update!(job_params)
        render json: job, status: :ok
    end

    # '/job/:id' deletes an job of id in params(Delete by destroy)
    def destroy
        job = find_job
        job.destroy
        head :no_content
    end

    private
    
    def find_job
        Job.find(params[:id])
    end

    def job_params
        params.permit(:name, :jobtag_code)
    end
end
