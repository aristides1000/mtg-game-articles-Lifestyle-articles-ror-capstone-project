module ArticlesHelper
  def vote_check(article)
    return if current_user.nil?

    if article.votes.find_by(user_id: current_user.id).nil?
      render 'votes/form', article: article
    else
      ''
    end
  end
end
