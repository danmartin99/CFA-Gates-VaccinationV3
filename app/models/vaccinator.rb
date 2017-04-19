class Vaccinator < ApplicationRecord
  # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
  
       has_many :patients, dependent: :destroy
       has_many :projects, dependent: :destroy
end
