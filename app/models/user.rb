class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_many :qols, dependent: :destroy
         validates :name, presence: true 
         validates :profile, length: { maximum: 200 } 

         has_many :likes, dependent: :destroy
         has_many :liked_qols, through: :likes, source: :qol

         has_many :comments, dependent: :destroy

         def already_liked?(qol)
          self.likes.exists?(qol_id: qol.id)
        end
end
