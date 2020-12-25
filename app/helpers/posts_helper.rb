module PostsHelper
  def post_thumbnail_url post
    post.photo.attached? ? url_for(post.photo) : "placeholder.png"    
  end
end
