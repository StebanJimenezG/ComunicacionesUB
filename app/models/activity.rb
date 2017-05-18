class Activity < ActiveRecord::Base
  belongs_to :committee
  accepts_nested_attributes_for :committee,reject_if: :all_blank,allow_destroy: true
  has_attached_file :doc, styles:{ medium:"1200x720", thumb:"800x600",mini:"150x150"}
  validates_attachment_content_type :doc, content_type: /\Aimage\/.*\Z/

end
