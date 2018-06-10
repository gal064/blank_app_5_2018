# == Schema Information
#
# Table name: icomments
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  content    :string
#  icase_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Icomment < ApplicationRecord
  
belongs_to :icase
belongs_to :user

validates :user_id, :presence => true
validates :icase_id, :presence => true
validates :content, :presence => true
  
end
