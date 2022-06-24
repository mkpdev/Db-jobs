class Api::V1::QueueJobsController < ApplicationController

  def index
    @queue_jobs = QueueJob.all
    render json: @queue_jobs, each_serializer: QueueJobSerializer 
  end

  def create;end
end
