class Api::V1::QueueJobsController < ApplicationController

  def index
    @queue_jobs = QueueJob.all
    render json: @queue_jobs, each_serializer: QueueJobSerializer
  end

  def create
    quejob = QueueJob.new(queue_job_params)
    if quejob.save
      CreateQueueJob.set(priority: 1).perform_later(quejob.id)
      render json: {status: 201, quejob: quejob}
    else
      render json: {quejob: quejob.errors}
    end
  end

  private
  def queue_job_params
    params.require(:queue_job).permit(:priority, movie_option: [:title])
  end
end
