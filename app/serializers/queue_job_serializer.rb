class QueueJobSerializer < ActiveModel::Serializer
  attributes :id, :status, :priority
end
