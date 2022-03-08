class Rabbit < ApplicationRecord
  belongs_to :breed
  has_many :dos
end
