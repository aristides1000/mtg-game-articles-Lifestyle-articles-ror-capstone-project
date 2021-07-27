module ArticlesHelper
  def vote_check(article)
    if article.votes.find_by(user_id: current_user.id).nil?
      render "votes/form", article: article
    else
      return ""
    end
  end
end
