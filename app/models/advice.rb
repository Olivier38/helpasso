# == Schema Information
#
# Table name: advices
#
#  id          :integer          not null, primary key
#  name        :string
#  content     :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer
#  status      :boolean
#  linkname    :string
#  link        :text
#

class Advice < ActiveRecord::Base
	belongs_to :category
	has_many :user_advices
	has_many :users, through: :user_advices
end
