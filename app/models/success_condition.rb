class SuccessCondition < ActiveRecord::Base
  validates :description, :presence => true
  belongs_to :project
end
