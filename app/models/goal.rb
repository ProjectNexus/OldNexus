class Goal < ActiveRecord::Base
  belongs_to :goalable, :polymorphic => true


  

end
def find_goalable
    params.each do |name, value|
      if name =~ /(.+)_id$/
        return $1.classify.constantize.find(value)
      end
    end
    nil
  end