class Tag < ActiveRecord::Base
  has_many :tag_links, :dependent => :destroy

  accepts_nested_attributes_for :tag_links
end
