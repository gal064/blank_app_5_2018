# == Schema Information
#
# Table name: companies
#
#  id         :integer          not null, primary key
#  name       :string
#  user_id    :integer
#  logo       :string
#  club_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Company < ApplicationRecord
  
  belongs_to :club
  has_many :icases, :dependent => :destroy
  belongs_to :user

  validates :user_id, :presence => true
  validates :name, :presence => true
  validates :name, :uniqueness => true
  
end
