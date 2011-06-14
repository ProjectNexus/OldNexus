class Seed < ActiveRecord::Base
  has_many :goals, :as => :goalable
  belongs_to :user
end
