require "rails_helper"

RSpec.describe CreateQueueJob, type: :job do
  it 'perform job' do
    job = QueueJob.create(priority: 0, movie_option: {"title": "my movie"})
    worker = CreateQueueJob.new.perform(job.id)

    job.reload
    expect(job.status).to eq('done')
    expect(Movie.count).to eq(1)
  end
end
