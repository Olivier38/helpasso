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

class AdvicesControllerTest < ActionController::TestCase
  setup do
    @advice = advices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:advices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create advice" do
    assert_difference('Advice.count') do
      post :create, advice: { content: @advice.content, name: @advice.name }
    end

    assert_redirected_to advice_path(assigns(:advice))
  end

  test "should show advice" do
    get :show, id: @advice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @advice
    assert_response :success
  end

  test "should update advice" do
    patch :update, id: @advice, advice: { content: @advice.content, name: @advice.name }
    assert_redirected_to advice_path(assigns(:advice))
  end

  test "should destroy advice" do
    assert_difference('Advice.count', -1) do
      delete :destroy, id: @advice
    end

    assert_redirected_to advices_path
  end
end
