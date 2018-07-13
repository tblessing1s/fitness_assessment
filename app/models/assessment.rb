class Assessment < ApplicationRecord
  belongs_to :client, inverse_of: :assessments
  has_one :knee, inverse_of: :assessment, dependent: :destroy
  has_one :hip, inverse_of: :assessment, dependent: :destroy
  has_one :shoulder, inverse_of: :assessment, dependent: :destroy
  has_one :scapula, inverse_of: :assessment, dependent: :destroy
  has_one :elbow, inverse_of: :assessment, dependent: :destroy
  has_one :wrist, inverse_of: :assessment, dependent: :destroy
  has_one :ankle, inverse_of: :assessment, dependent: :destroy
  has_one :core, inverse_of: :assessment, dependent: :destroy

  accepts_nested_attributes_for :knee, :hip, :shoulder, :scapula, :elbow, :wrist, :ankle, :core

 	scope :client_assessments, -> (client){where(client_id: client).order('created_at desc')}
  scope :most_recent, -> (client){}
  #scope :most_recent, -> (client){select(client_id: client, created_at: client).order('created_at asc').group(:client_id, :created_at)}
  

end