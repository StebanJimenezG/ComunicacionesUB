class Member < ActiveRecord::Base
  has_many :comitemembers
  has_many :committees, :through => :comitemembers

  has_attached_file :foto, styles:{ medium:"1200x720", thumb:"800x600", mini:"300x200"}
validates_attachment_content_type :foto, content_type: /\Aimage\/.*\Z/

end
