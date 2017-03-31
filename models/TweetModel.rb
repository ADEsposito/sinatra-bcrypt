class Tweet < ActiveRecord::Base
  self.table_name = "tweets"
  belongs_to :user
end
