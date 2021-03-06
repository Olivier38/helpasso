class AdvicesController < ApplicationController
  before_action :set_advice, only: [:show, :edit, :update, :destroy, :complete]
  before_action :set_checklists, only: [:index, :complete]

  # GET /advices
  # GET /advices.json
  def index
    @site = Site.new
    @menu = 0
    @class = 0
    @advices = Advice.all
    @categories = Category.all
    @checklists = Checklist.all
    if user_signed_in?
    @user_advices = UserAdvice.where(user_id: current_user).pluck(:advice_id)  
  end
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

  def complete
    UserAdvice.create(user_id: current_user.id, advice_id: @advice.id)
    @falses = current_user.checklists.first.attributes.values.count(false) # On compte ici le nombre de réponse "non" dans le formulaire
    @increment = 90 / (@falses*4.0) # Un user a gagné 10 points en créant son compte, le maximum est 100 points. Le nombre de points gagné = 90 / le nombre de réponses "non" * le nombre d'advices par questions
    current_user.increment(:points, @increment)
    current_user.save
    flash[:notice] = "+ #{@increment.to_i}"
    redirect_to root_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_advice
      @advice = Advice.find(params[:id])
    end

    def set_checklists
      @checklists = Checklist.all
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    # advice[status] = "too"
    # advice[name] = "foo"
    def advice_params
      params.require(:advice).permit(:name, :content, :category_id, :status, :linkname1, :link1, :linkname2, :link2, :linkname3, :link3, :ref)
    end
end
