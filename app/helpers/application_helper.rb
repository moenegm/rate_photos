module ApplicationHelper
    def name(user_id)
        user = User.find(user_id)
        full_name = user.first_name + " " + user.last_name
        if user.admin
            bage = content_tag(:i, "", class: ["bi", "bi-patch-check-fill"], style: ["font-size: 1.2rem;", "color: orange;"])
            name = content_tag(:span, full_name, title:"Admin")
            return bage + " " + name
        elsif user.verified
            bage = content_tag(:i, "", class: ["bi", "bi-patch-check-fill"], style: ["font-size: 1.2rem;", "color: cornflowerblue;"]) 
            name = content_tag(:span, full_name, title:"Verified")
            return bage + " " + name
        end
        return full_name 
    end
end


