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

require 'test_helper'

class AdviceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
