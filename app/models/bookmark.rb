# == Schema Information
#
# Table name: bookmarks
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  icase_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Bookmark < ApplicationRecord
  
  belongs_to :icase
  belongs_to :user

validates :user_id, :presence => true
validates :icase_id, :presence => true
  
end
