class Project < ApplicationRecord
  belongs_to :grcrd
  #belongs_to :vaccinator
  has_many :patients
end
