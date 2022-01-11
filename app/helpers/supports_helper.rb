module SupportsHelper
    def status(support_id)
        support = Support.find(support_id)
        if support.status == "Resolved"
            return badge = content_tag(:i, " #{support.status}" , class: ["bi", "bi-check-circle-fill"], style: ["font-size: 1.2rem;", "color: green;"])  
        elsif support.status == "Rejected"
            return badge = content_tag(:i, " #{support.status}" , class: ["bi", "bi-x-circle-fill"], style: ["font-size: 1.2rem;", "color: red;"])   
        else
           return badge = content_tag(:i, " #{support.status}" , class: ["bi", "bi-pause-circle-fill"], style: ["font-size: 1.2rem;", "color: orange;"])                       
        end
    end
end
