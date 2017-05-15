class Membercommittee < ActiveRecord::Base
  belongs_to :member
  belongs_to :committee
end
