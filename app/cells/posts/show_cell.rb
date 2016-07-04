module Posts
  class ShowCell < ApplicationCell
    cache :show

    property :title
    property :body
    property :author_id

    def show
      render
    end

    private

    def post
      model
    end
  end
end
