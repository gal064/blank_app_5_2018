# == Schema Information
#
# Table name: icases
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  question   :string
#  company_id :integer
#  role       :string
#  club_id    :integer
#  approach   :string
#  element    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Icase < ApplicationRecord
end
