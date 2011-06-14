class ResourceStock < ActiveRecord::Base
  belongs_to :resource
  belongs_to :resourceable, :polymorphic => :true

end

def find_resourceable
  params.each do |name, value|
    if name =~ /(.+)_id$/
      return $1.classify.constantize.find(value)
    end
  end
  nil
end