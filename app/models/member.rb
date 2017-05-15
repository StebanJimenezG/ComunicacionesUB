class Member < ActiveRecord::Base
  validates :nombre, :presence => true
  has_many :membercommittees
  has_many :committees, :through => :membercommittees

  has_attached_file :foto, styles:{ medium:"1200x720", thumb:"800x600"}
validates_attachment_content_type :foto, content_type: /\Aimage\/.*\Z/

end
