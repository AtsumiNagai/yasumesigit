class Like < ApplicationRecord
  belongs_to :qol
  belongs_to :user

  validates_uniqueness_of :qol_id, scope: :user_id
end
