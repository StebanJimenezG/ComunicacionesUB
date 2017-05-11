class TypeF < ActiveRecord::Base
  has_many :activity_type_fs
  has_many :activities, :through => :activity_type_fs
end
