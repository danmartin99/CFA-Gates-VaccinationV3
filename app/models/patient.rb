class Patient < ApplicationRecord
  belongs_to :vaccinator
  mount_uploader :photo, PatientpicUploader
end
# class User < ActiveRecord::Base
#   mount_uploader :avatar, AvatarUploader
# end
# class PatientpicUploader < CarrierWave::Uploader::Base
