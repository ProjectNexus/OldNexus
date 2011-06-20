class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :tag_links, :as => :taggable
end
