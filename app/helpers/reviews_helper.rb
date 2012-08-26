module ReviewsHelper
  def edit_and_destroy_review_link_user(product, review)

    if review.user_id == current_user.id
      links = link_to 'Edit', edit_product_review_path(product, review)
      links += "</td><br /><td>".html_safe
      links += link_to 'Destroy', review, method: :delete, data: { confirm: 'Are you sure?' }
    end
  end
end
