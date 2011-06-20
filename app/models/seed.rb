class Seed < ActiveRecord::Base
  has_many :goals, :as => :goalable
  belongs_to :user
  belongs_to :category
  has_many :tag_links, :as => :taggable
end
