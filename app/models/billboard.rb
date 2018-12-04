class Billboard < ApplicationRecord
  belongs_to :user
  has_many :songs, dependent: :destroy
  has_many :artists, through: :songs
end
