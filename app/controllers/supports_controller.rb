class SupportsController < ApplicationController
  before_action :set_support, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :destroy]

  # GET /supports or /supports.json
  def index
    @supports = Support.all
  end

  # GET /supports/1 or /supports/1.json
  def show
    @support = Support.find(params[:id])
  end

  # GET /supports/new
  def new
    @support = current_user.supports.new
  end

  # GET /supports/1/edit
  def edit
  end

  # POST /supports or /supports.json
  def create
    @support = current_user.supports.build(support_params)

    respond_to do |format|
      if @support.save
        format.html { redirect_to @support, notice: "Support was successfully created." }
        format.json { render :show, status: :created, location: @support }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @support.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supports/1 or /supports/1.json
  def update
    respond_to do |format|
      if @support.update(support_params)
        format.html { redirect_to @support, notice: "Support was successfully updated." }
        format.json { render :show, status: :ok, location: @support }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @support.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supports/1 or /supports/1.json
  def destroy
    @support.destroy
    respond_to do |format|
      format.html { redirect_to supports_url, notice: "Support was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def correct_user
    @support = current_user.supports.find_by(id: params[:id])
    redirect_to supports_path, notice: "You do not have permission to modify this post" if @support.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_support
      @support = Support.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def support_params
      params.require(:support).permit(:support_type, :content, :user_id, :body)
    end
end
