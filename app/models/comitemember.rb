class Comitemember < ActiveRecord::Base
  belongs_to :member
  belongs_to :committee
  accepts_nested_attributes_for :member,reject_if: :all_blank,allow_destroy: true
end
