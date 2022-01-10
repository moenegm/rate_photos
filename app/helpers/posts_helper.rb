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

    def nxt(nxt)
        if nxt = "nxt"
            @posts.each.with_index do |post,index|
                if @post.id == post.id && index <= @posts.length 
                    return @posts[0] if @posts[index] == @posts.last 
                    return @posts[index + 1]
                end
            end
        end
    end

    def prev(prev)
        if prev = "prev"
            @posts.each_with_index do |post,index|
                if @post.id == post.id && index >= 0
                    return @posts[index - 1]
                end
            end
        end
    end

end
