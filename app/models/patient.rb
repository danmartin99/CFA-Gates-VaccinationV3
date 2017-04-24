class Patient < ApplicationRecord
  belongs_to :vaccinator
  belongs_to :project
  mount_uploader :photo, PatientpicUploader



  validates :first_name, presence: true

end
# class User < ActiveRecord::Base
#   mount_uploader :avatar, AvatarUploader
# end
# class PatientpicUploader < CarrierWave::Uploader::Base
