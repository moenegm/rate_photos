module UsersHelper
    def check_avatar(user)
        if user.avatar.present?
 
            link_to image_tag(@user.avatar, class:"avatar mb-3", radius: 0)
        else
            link_to image_tag("default_avatar", class:"mb-3 avatar justify-items-center", radius: 0)
        end
    end
end