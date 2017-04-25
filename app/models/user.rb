class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

        #  acts_as_messageable
         #
        #    def mailboxer_name
        #      self.name
        #    end
         #
        #    def mailboxer_email(object)
        #      self.email
        #    end
  has_one :vaccinator, dependent: :destroy
  has_one :grcrd, dependent: :destroy
end
