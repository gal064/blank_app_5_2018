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
  
belongs_to :club
has_many :bookmarks, :dependent => :destroy
has_many :commets, :class_name => "Icomment", :dependent => :destroy
belongs_to :company
belongs_to :user

has_many :bookmarked_users, :through => :bookmarks, :source => :user

validates :user_id, :numericality => true
validates :user_id, :presence => true
validates :question, :presence => true
validates :question, :uniqueness => { :scope => [:company_id] }
validates :company_id, :presence => true
validates :club_id, :presence => true
  
  
end
