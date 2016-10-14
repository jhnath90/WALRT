class Vote < ActiveRecord::Base
  belongs_to :users
  belongs_to :art_works
  validates_uniqueness_of :art_work_id, scope: :user_id
end
