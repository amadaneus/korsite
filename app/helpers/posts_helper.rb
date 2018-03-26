module PostsHelper

  def able_paginate(post)
    post.published.count > 5
  end

end
