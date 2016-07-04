module Posts
  class FormCell < BaseCell
    cache :show

    private

    def form_title
      post.new_record? ? 'New Post' : 'Edit Post'
    end
  end
end
