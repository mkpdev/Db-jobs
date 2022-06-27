class CreateQueueJob < ApplicationJob
  queue_as :default

  def perform(job_id)
    queue_job = QueueJob.find(job_id)
    queue_job.update(status: 1)
    if Movie.create(queue_job.movie_option)
      queue_job.update(status: 2)
    else
      queue_job.update(status: 3)
    end
  end
end
