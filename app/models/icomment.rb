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
end
