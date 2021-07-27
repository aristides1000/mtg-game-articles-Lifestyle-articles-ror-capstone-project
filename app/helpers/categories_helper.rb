module CategoriesHelper
  def image?(most_voted)
    if most_voted.nil?
      "https://images.unsplash.com/photo-1541278107931-e006523892df?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1951&q=80"
    else
      most_voted.image_url
    end
  end
end
