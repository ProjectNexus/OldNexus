class Goal < ActiveRecord::Base
  belongs_to :goalable, :polymorphic => true
  has_many :assignments
  has_many :resource_stocks, :as => :resourceable

 

end
def find_goalable
  params.each do |name, value|
    if name =~ /(.+)_id$/
      return $1.classify.constantize.find(value)
    end
  end
  nil
end