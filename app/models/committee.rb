class Committee < ActiveRecord::Base
  validates :nombre, :presence => true
  has_many :membercommittees
  has_many :members, :through => :membercommittees

  has_attached_file :logo, styles:{ medium:"1200x720", thumb:"800x600",mini:"150x150"}
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/
  has_attached_file :baner, styles:{ medium:"1200x720", thumb:"800x600", mini:"300x200"}
  validates_attachment_content_type :baner, content_type: /\Aimage\/.*\Z/

end
