class Video < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :duration, :numericality => {:only_integer => true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5}
end