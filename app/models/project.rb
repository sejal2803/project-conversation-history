class Project < ApplicationRecord
  has_many :comments, dependent: :destroy
  STATUSES = ['Not started', 'In progress', 'Completed'].freeze

end
