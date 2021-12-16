class UsersController < ApplicationController
    before_action :set_s3_direct_post, only: [:new, :edit, :create, :update]


    def index
        @users = User.all
    end

    def show
        @user = User.find(params[:id])
    end

    private
        # Use callbacks to share common setup or constraints between actions.
        def set_s3_direct_post
            @s3_direct_post = S3_BUCKET.presigned_post(key: "uploads/#{SecureRandom.uuid}/${filename}", success_action_status: '201', acl: 'public-read')
        end
end