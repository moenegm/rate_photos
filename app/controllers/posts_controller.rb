class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :destroy]

  # GET /posts or /posts.json
  def index
    @posts = Post.all
    @ratings = Rating.all
  end

  # GET /posts/1 or /posts/1.json
  def show
    #@rate = @post.ratings.all
    @rate = Rating.where(post_id: @post.id).group("rating").count
  end

  # GET /posts/new
  def new
    @post = current_user.posts.build
    @rating = Rating.new
  end

  # GET /posts/1/edit
  def edit
  end

  # POST /posts or /posts.json
  def create
    @post = current_user.posts.build(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: "Post was successfully created." }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end

  end

  # PATCH/PUT /posts/1 or /posts/1.json
  def update
    
    respond_to do |format|
      if @post.update(post_params)
        @rating = Rating.find_or_create_by(user: current_user, post: @post, rating: params[:post][:ratings][:rating])
        @rating.save!

        format.html { redirect_to @post, notice: "Post was successfully updated." }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end

  end

  # DELETE /posts/1 or /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: "Post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def correct_user
    @post = current_user.posts.find_by(id: params[:id])
    redirect_to posts_path, notice: "You do not have permission to modify this post" if @post.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def post_params
      params.require(:post).permit(:name, :iso, :shutter_speed, :appature, :composition, :location, :description, :image, :user_id, ratings_attributes: [:rating])
    end
end
