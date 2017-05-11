class Activity < ActiveRecord::Base
has_many :activity_type_fs
has_many :type_fs, :through => :activity_type_fs
end
