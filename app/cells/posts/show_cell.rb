module Posts
  class ShowCell < BaseCell
    cache :show

    property :title
    property :body
    property :author_id
  end
end
