class QueueJob < ApplicationRecord
  enum status: { waiting: 0, in_progress: 1, done: 2, failed: 3 }
  enum priority: { critical: 0, high: 1, low: 2 }
  validates :priority, presence: true
end
