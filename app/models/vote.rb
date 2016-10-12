class Vote < ActiveRecord::Base
  belongs_to :users
  belongs_to :art_works
end
