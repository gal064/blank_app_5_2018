# == Schema Information
#
# Table name: clubs
#
#  id         :integer          not null, primary key
#  name       :string
#  logo       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Club < ApplicationRecord
  

has_many :icases, :dependent => :destroy
has_many :companies, :dependent => :destroy

validates :name, :presence => true
validates :name, :uniqueness => true
  
  
end
