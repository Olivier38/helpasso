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

class AdvicesController < ApplicationController
  before_action :set_advice, only: [:show, :edit, :update, :destroy]

  # GET /advices
  # GET /advices.json
  def index
    @class = 0
    @advices = Advice.all
    @categories = Category.all
  end

  # GET /advices/1
  # GET /advices/1.json
  def show
  end

  # GET /advices/new
  def new
    @categories = Category.all
    @advice = Advice.new
  end

  # GET /advices/1/edit
  def edit
    @categories = Category.all
  end

  # POST /advices
  # POST /advices.json
  def create
    @categories = Category.all
    @advice = Advice.new(advice_params)

    respond_to do |format|
      if @advice.save
        format.html { redirect_to @advice, notice: 'Advice was successfully created.' }
        format.json { render :show, status: :created, location: @advice }
      else
        format.html { render :new }
        format.json { render json: @advice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /advices/1
  # PATCH/PUT /advices/1.json
  def update
    respond_to do |format|
      if @advice.update(advice_params)
        format.html { redirect_to @advice, notice: 'Advice was successfully updated.' }
        format.json { render :show, status: :ok, location: @advice }
      else
        format.html { render :edit }
        format.json { render json: @advice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /advices/1
  # DELETE /advices/1.json
  def destroy
    @advice.destroy
    respond_to do |format|
      format.html { redirect_to advices_url, notice: 'Advice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_advice
      @advice = Advice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    # advice[status] = "too"
    # advice[name] = "foo"
    def advice_params
      params.require(:advice).permit(:name, :content, :category_id, :status, :linkname1, :link1, :linkname2, :link2, :linkname3, :link3,)
    end
end
