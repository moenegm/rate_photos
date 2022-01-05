module PostsHelper
    def post_rated_users(query)
        array = []
        query.each do |row|
            array << row['user_id']
        end
        return array
    end

    def already_post_rating(query)
        rating = 0
        query.each do |row|
            if row['user_id'] == current_user.id
                rating = row['rating']
            end
        end
        return rating
    end
end
