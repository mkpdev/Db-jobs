class CreateQueueJob < ApplicationJob
  queue_as :default

  before_perform do |job|
    QueueJob.create(job_id: job_id, priority: @priority)
  end

  def perform(movie_data)
    queue_job = QueueJob.find_by_job_id(job_id)
    queue_job.update(status: 1)
    if Movie.create(movie_data)
      queue_job.update(status: 2)
    else
      queue_job.update(status: 3)
    end
  end
end
