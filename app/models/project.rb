class Project < ActiveRecord::Base
  validates :name, presence: true
  has_many :tasks
  validates :success_conditions, presence: true
  has_many :success_conditions, :dependent => :destroy
  accepts_nested_attributes_for :success_conditions, :allow_destroy => true
  accepts_nested_attributes_for :tasks, :allow_destroy => true
end
