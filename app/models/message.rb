class Message < ActiveRecord::Base
  attr_accessible :content, :parent_id
  has_ancestry
end
