module PostsHelper
  def user_is_authorized_for_post?(post)
     current_user && (current_user == post.user || current_user.admin?)
  end

  def render_post_title(post)
    output = ""
    output += "#{post.title}<br>"
    output += "<small>submitted #{time_ago_in_words(post.created_at)} ago by #{post.user.name}</small>"
    output.html_safe
  end
end
