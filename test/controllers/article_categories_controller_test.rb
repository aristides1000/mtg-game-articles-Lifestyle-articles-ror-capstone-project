require "test_helper"

class ArticleCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @article_category = article_categories(:one)
  end

  test "should get index" do
    get article_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_article_category_url
    assert_response :success
  end

  test "should create article_category" do
    assert_difference('ArticleCategory.count') do
      post article_categories_url, params: { article_category: { articleid: @article_category.articleid, categoryid: @article_category.categoryid } }
    end

    assert_redirected_to article_category_url(ArticleCategory.last)
  end

  test "should show article_category" do
    get article_category_url(@article_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_article_category_url(@article_category)
    assert_response :success
  end

  test "should update article_category" do
    patch article_category_url(@article_category), params: { article_category: { articleid: @article_category.articleid, categoryid: @article_category.categoryid } }
    assert_redirected_to article_category_url(@article_category)
  end

  test "should destroy article_category" do
    assert_difference('ArticleCategory.count', -1) do
      delete article_category_url(@article_category)
    end

    assert_redirected_to article_categories_url
  end
end
