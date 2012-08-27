module ReviewsHelper
  def edit_review_link_user(product, review)

    if review.user_id == current_user.id
      link_to 'Edit', edit_product_review_path(product, review)
    end
  end
end
