class Grcrd < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable, :validatable

  has_many :projects, dependent: :destroy
  belongs_to :user
  mount_uploader :g_photo, GrcrdpicUploader
end
