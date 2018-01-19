class Assessment < ApplicationRecord
  belongs_to :client
  has_one :knee
end
